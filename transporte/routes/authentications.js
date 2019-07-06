const express = require('express');
const router = express.Router();
const passport = require('passport');

router.get('/', (req, res) => {
  res.render('login.html');
});

router.post('/', (req, res, next) => {
  alert("Antes de autnticar");
  /*passport.authenticate('local', {
    successRedirect: '/home',
    failureRedirect: '/',
    failureFlash: true
  })*/
});

module.exports = router;