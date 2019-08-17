const router = require('../middleware/router');

router.get('/agregar_vales', (req, res) => {
    res.render('./voucher/add_voucher.html');
});
router.post('/agregar_vales', (req, res) => {

});

module.exports = router;