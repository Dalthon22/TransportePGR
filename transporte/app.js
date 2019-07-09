var createError = require('http-errors');
const express = require('express');
const path = require('path');
const favicon = require('serve-favicon');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const nunjucks=require('nunjucks');
//const index = require('./routes/index');
const Sequelize = require('sequelize');

//Import Routes (Controllers)
/*var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var carRouter = require('./routes/c_car');


//Usage of Routes
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/cars', carRouter);*/


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
//var env = new nunjucks.Environment(new nunjucks.FileSystemLoader('views'));
//Renderiza la primera página de la aplicación al correr el servidor
app.get('/', function(req, res) {
  res.render('base.html');
});
app.use('/instituciones', require('./routes/c_procuraduria'));
app.use('/route', require('./routes/c_route'));
// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use('/scripts', express.static(`${__dirname}/node_modules/`));


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
 // res.status(err.status || 500);
  //res.render('error');
});

//"localhost:3000" en barra de navegador
const PORT = process.env.PORT || 3000;
app.listen(PORT, console.log(`Server started on port ${PORT}`));

module.exports = app;
