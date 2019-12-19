const express = require('express')
const router = express.Router();
const controller = require('../controllers/c_driver_assign');
const {
    body
} = require('express-validator');

//Ruta para mostrar el listado de solicitudes pendientes de asignación de motorista.
router.get('/', (req, res) => {
    controller.getList(req, res);
});

//Ruta para mostrar el formulario de asignación.
router.get('/asignar', (req, res) => {
    controller.getAssign(req, res);
});

//Ruta para guardar el motorista asignado.
router.post('/asignar', (req, res) =>{
    controller.asignarMotorista(req,res);
});

module.exports = router;