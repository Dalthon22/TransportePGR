var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var nunjucks = require('nunjucks');
const db = require('./dbconfig/conex.js');
var app = express();
var bodyParser = require('body-parser');



// Test DB
db.authenticate()
  .then(() => console.log('Database connected...'))
  .catch(err => console.log('Error: ' + err))

//Migracion de tablas
/* var Migrate = require('./models/migrations');
var migration = new Migrate(); */

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'html');
nunjucks.configure('views', {
  autoescape: true,
  express: app
});
//bodyparser
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
  extended: false
}));
app.use(cookieParser());
app.use(bodyParser.urlencoded({
  extended: true
}));


//archivos estaticos
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'node_modules')));

//routes
app.use('/', require('./routes/index'));
app.use('/', require('./routes/r_folo6'));
app.use('/', require('./routes/r_voucher'));
app.use('/direccion', require('./routes/r_address'));
app.use('/instituciones', require('./routes/r_procuraduria'));
app.use('/misiones', require('./routes/r_misiones'));
app.use('/vehiculos', require('./routes/r_vehicle'));

app.use('/rutas', require('./routes/r_route'));
app.use('/lugares_frecuentes', require('./routes/r_frequent_places'));
app.use('/motoristas', require('./routes/r_driver'));
app.use('/', require('./routes/r_employee'));
app.use('/', require('./routes/r_approve_panel'));
app.use('/configuracion_calendario', require('./routes/r_config_calendar'));
app.use('/asignar_motorista', require('./routes/r_driver_assign'));
app.use('/asignar_recursos', require('./routes/r_assign'));

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  //res.send('error' + __dirname);
  res.render('404.html');
});

module.exports = app;