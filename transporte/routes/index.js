const router = require('../middleware/router');


router.get('/', (req, res) => {
    res.render('login.html');
});

module.exports = router;