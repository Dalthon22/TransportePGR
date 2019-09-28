const router = require('../middleware/router');
//var bodyParser = require('body-parser');
const controller = require('../controllers/c_folo6');


router.get('/solicitud_nueva', (req, res) => {
    res.render('./folo6/folo6.html');
});

router.get('/solicitud_nueva/:id', (req, res) => {
    console.log("Solicito editar el folo con id: " + req.params.id);
    controller.getOne(req, res);
});

router.post('/solicitud_nueva/add', (req, res) => {
    try {

        controller.createFolo6(req, res);
    } catch (err) {
        console.log(err);
    }
});
router.post('/solicitud_nueva/edit', (req, res) => {
    try {

        controller.editFolo6(req, res);
    } catch (err) {
        console.log(err);
    }
});


router.get('/folos', (req, res) => {
    controller.getList(req, res);

});
module.exports = router;