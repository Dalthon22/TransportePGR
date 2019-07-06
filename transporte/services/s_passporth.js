const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const db = require('../dbconfig/conex');

passport.use(new LocalStrategy({
  usernameField: 'user',
  passwordField: 'password',
  passReqToCallback: true
}, async (username, password, done) => {

  try {
    alert("Antes del query");
    const rows = await db.query('SELECT * FROM Users WHERE user = :u', {
      replacements: {
        u: user
      },
      type: db.QueryTypes.SELECT
    });
    alert("Despues del query");
    console.log(rows);
    if (rows.length > 0) {
      const user_db = rows[0];
      helpers.matchPassword(password, user_db.password)
        .then(validPassword => {
          if (validPassword) {
            return done(null, user_db, {
              msg: 'Welcome ' + user_db.user
            });
          } else {
            done(null, false, {
              msg: 'Incorrect Password'
            });
          }
        })
        .catch(error => console.log('Matchpassword: ' + error));
    } else {
      return done(null, false, {
        msg: 'The Username does not exists.'
      });
    }
  } catch (error) {
    console.log('No query: ' + error);
  }
}))