const express = require('express');
const router = express.Router();
const department_services = require('../services/s_department');
const city_services = require('../services/s_city');
const address_services = require('../services/s_address');
const { body, validationResult } = require('express-validator');

//get addresses list
router.get('/', (req, res) => {
    Direcciones = address_services.getAll()
    .then(Direcciones => {
        res.render('../views/address/list.html', {
            Direcciones
        });
    })
    .catch(err => console.log(err));
});

// Show add form and Get Departamentos list
router.get('/add', (req, res) => {
    Departamentos = department_services.getAll()
        .then(Departamentos => res.render('../views/address/add.html', {
            Departamentos
        }))
        .catch(err => console.log(err))
});

//Gets Municipios depending on the selected Departamento
router.get('/getMunicipios', (req, res) =>{
    selectedDepartamento=req.query.selectedDepartamento;
    municipios = city_services.getMunicipios(selectedDepartamento)
    .then(municipios => res.send(municipios))
    .catch(err => console.log(err));
});

//Saves the new address in the DB.
router.post('/add', [
    //Validations
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(),
    body('detail','Ingrese el detalle de la dirección.').not().isEmpty(),
    body('detail', 'El detalle debe ser menor a 250 caracteres.').isLength({ max: 250 }),
    body('detail', 'El detalle debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    const errors = validationResult(req);
    let {
        name,
        detail,
        departamento,
        municipio,
    } = req.body;
    console.log(errors.array());
    //If there are errors, renders the same form, otherwise saves the new Address
    if (!errors.isEmpty()) {
        res.render('../views/route/add.html', {
            name, detail, departamento, municipio, errors: errors.array()
        });
    }
    else {
        console.log(req.body);
        address_services.create(name, detail, municipio, departamento)
        .then(res.render('/direccion'))
        .catch(err => console.log(err));
    }
});

module.exports = router;
