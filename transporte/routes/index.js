const router = require('../middleware/router');


router.get('/', (req, res) => {
    res.render('layout.html');
});

module.exports = router;