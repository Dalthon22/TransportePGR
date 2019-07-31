const router = require('../middleware/router');

router.get('/solicitud_nueva', (req, res) => {
    res.render('folo6.html');
});

module.exports = router;