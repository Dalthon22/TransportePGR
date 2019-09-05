const router = require('../middleware/router');
//var bodyParser = require('body-parser');
const controller = require('../controllers/c_folo6');


router.get('/solicitud_nueva', (req, res) => {
    res.render('folo6.html');
});

router.post('/solicitud_nueva/add', (req, res) => {
    try {

        controller.createFolo6(req, res);
    } catch (err) {
        console.log(err);
    }
});
router.get('/folos', (req, res) => {
    controller.getList(req, res);

});
module.exports = router;