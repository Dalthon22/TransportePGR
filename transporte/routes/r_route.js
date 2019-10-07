const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_route');
const {
    body
} = require('express-validator');

// Get route list
router.get('/', (req, res) => {
    controller.getList(req, res);
});

// Show add form and Get Departamentos list
router.get('/add', (req, res) => {
    controller.getDepartmentList(req, res);
});

//Gets Municipios depending on the selected Departamento
router.get('/getMunicipios', (req, res) => {
    controller.getMunicipiosByDepartamento(req, res);
});

//Save route
router.post('/add', [
        //Validations
        body('name', 'Ingrese el nombre de la ruta estándar.').not().isEmpty(),
        body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({
            max: 40
        }),
        body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
        body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
        body('municipio', 'No seleccionó un municipio').not().isEmpty()
    ],
    (req, res) => {
        controller.createRoute(req, res);
    }
);

//Shows edit form
router.get('/update', (req, res) => {
    controller.getUpdate(req, res);
});


//Saves edited route
router.post('/update', [
    //Validations
    body('name', 'Ingrese el nombre de la ruta estándar.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({
        max: 40
    }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    controller.updateRoute(req, res);
});

module.exports = router;