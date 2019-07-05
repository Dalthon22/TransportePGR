const express = require('express');
const router = express.Router();
const passport = require('passport');

router.get('/', (req, res) =>{
    res.render('login.html');
    
  });

  router.post('/', (req, res, next) => {
    passport.authenticate('local.signin',{
      successRedirect: '/home',
      failureRedirect: '/',
      failureFlash: true
    })(req ,res , next); 
  });

  





module.exports = router;