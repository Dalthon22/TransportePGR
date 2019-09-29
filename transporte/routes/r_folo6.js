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
router.get('/solicitud_nueva/get/:id', (req, res) => {
    console.log("Solicito información el folo con id: " + req.params.id);
    controller.foloToString(req, res);
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
router.post('/solicitud_nueva/delete/:id', (req, res) => {
    try {

        controller.deleteFolo(req, res);
    } catch (err) {
        res.send({
            title: "Error en las rutas de eliminado",
            message: "Ocurrio un error mientras se eliminaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
            type: 1
        });
    }
});

router.get('/folos', (req, res) => {
    controller.getList(req, res);

});
module.exports = router;