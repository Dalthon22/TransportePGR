var Error = require('http-errors');
const express = require('express');
const path = require('path');
const session = require('express-session');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const nunjucks = require('nunjucks');
const passport = require('passport');
//const Sequelize = require('sequelize');

//initializations
var app = express();
// Database
const db = require('./dbconfig/conex.js');

// Test DB
db.authenticate()
  .then(() => console.log('Database connected...'))
  .catch(err => console.log('Error: ' + err))

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'html');
nunjucks.configure('views', {
  autoescape: true,
  express: app
});

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(cookieParser());
app.use(bodyParser.urlencoded({
  extended: false
}));

//Files static
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(`${__dirname}/public/`)));
app.use('/scripts', express.static(`${__dirname}/node_modules/`));

app.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));

/* app.use(passport.initialize());
app.use(passport.session()); */

//Routes
app.use(require('./routes/index'));
app.use('/vehiculos', require('./routes/r_car'));
app.use('/rutas', require('./routes/c_route'));
app.use('/instituciones', require('./routes/c_procuraduria'));



// catch 404 and forward to error handler
app.use(function (req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  //render the error page
  res.status(err.status || 500);
  res.send('error');
});

//"localhost:3000" en barra de navegador
//const PORT = process.env.PORT || 3000;
//app.listen(PORT, console.log(`Server started on port ${PORT}`));

module.exports = app;