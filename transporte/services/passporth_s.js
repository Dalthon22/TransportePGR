const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const db = require('../dbconfig/conex');

passport.use('local.signin', new LocalStrategy({
usernameField: 'user',
passwordField: 'password', 
passReqToCallback: true
}, async (req, user,password, done) => {
console.log(req.body);
console.log(user);
console.log(password);
}, async (req, username, password, done) => {
const rows = await db.query('SELECT * FROM Users WHERE user = ?', [user]);
if (rows.length > 0) {
    const user = rows[0];
    const validPassword = await helpers.matchPassword(password, User.password)
    if (validPassword) {
      done(null, user, req.flash('success', 'Welcome ' + user.user));
    } else {
      done(null, false, req.flash('message', 'Incorrect Password'));
    }
  } else {
    return done(null, false, req.flash('message', 'The Username does not exists.'));
  }
  }));



