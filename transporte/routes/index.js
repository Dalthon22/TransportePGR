var express = require('express');
var router = express.Router();
const db = require('../dbconfig/conex');


router.get('/', (req, res) => {
    res.render('login.html');
    db.query('select * from users').then(results => {
        console.log(results);
    });

});

router.post('/auth', function (request, response) {
    var username = request.body.username;
    var password = request.body.password;
    if (username && password) {

        db.query('SELECT * FROM users WHERE username = ? AND password = ?', {
                replacements: [username, password],
                type: db.QueryTypes.SELECT
            }).then(results => {
                if (results.length > 0) {
                    request.session.loggedin = true;
                    request.session.username = username;
                    response.redirect('/home');
                } else {
                    response.send('Incorrect Username and/or Password!');
                }
                response.end();
            })
            .catch(error => console.log(error));
    } else {
        response.send('Please enter Username and Password!');
        response.end();
    }
});
router.get('/home', (req, res) => {
    res.render('index.html');

});

router.get('/home', function (request, response) {
    if (request.session.loggedin) {
        //response.send('Welcome back, ' + request.session.username + '!');
        //res.render('index.html');

    } else {
        response.send('Please login to view this page!');
    }
    response.end();
});

module.exports = router;