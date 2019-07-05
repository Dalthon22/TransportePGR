var express = require('express');
var router = express.Router();


router.get('/home', (req, res) =>{
  res.render('index.html');
  
});



  module.exports = router;


