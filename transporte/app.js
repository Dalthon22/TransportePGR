var createError = require('http-errors');
const express = require('express');
const path = require('path');
const session = require('express-session');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const nunjucks = require('nunjucks');
var app = express();


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


app.get('/home', function (req, res) {
  res.render('index.html');
});
//var env = new nunjucks.Environment(new nunjucks.FileSystemLoader('views'));
//Renderiza la primera página de la aplicación al correr el servidor
app.get('/', function (req, res) {
  res.render('base.html');
});

//Uso de rutas
app.use('/procuraduria', require('./routes/c_procuraduria'));
app.use('/route', require('./routes/c_route'));
app.use('/cars', require('./routes/c_car'));
//app.use('/',require('./routes/index'));
//app.use('/users', require('./routes/users'));


// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(session({
  secret: 'secret',
  resave: true,
  saveUninitialized: true
}));


app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use('/scripts', express.static(`${__dirname}/node_modules/`));

//middelware

/* app.use(passport.initialize());
app.use(passport.session()); */

//Routes

app.use(require('./routes/index'));
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

  // render the error page
  // res.status(err.status || 500);
  //res.render('error');
});


module.exports = app;