const router = require('../middleware/router');


router.get('/', (req, res) => {
    res.render('login.html');
});

router.get('/home', (req, res) => {
    res.render('home.html');
});

module.exports = router;