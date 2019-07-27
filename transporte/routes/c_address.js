const express = require('express');
const router = express.Router();
const dep_services = require('../services/s_department');
const city_services = require('../services/s_city');
const address_services = require('../services/s_address');

//get address list
router.get('/', (req, res) => {
    Direcciones = address_services.getAll()
    .then(Direcciones => {
        var i;
        var dep = [];
        var mun = [];
        for (i=0; i < Direcciones.length; i++){
            dep [i] = address_services.getDepartamento(Direcciones[i].deparment_id);
            mun [i] = city_services.getMunicipio(Direcciones[i].city_id);
        };
        res.render('../views/procuraduria/list.html', {
            Direcciones, dep, mun
        });
    })
    .catch(err => console.log(err));
});

// Get departments list
router.get('/add', (req, res) => {
    Departamentos = dep_services.getAll()
        .then(Departamentos => res.render('../views/address/add.html', {
            Departamentos
        }))
        .catch(err => console.log(err))
});

router.get('/getMunicipios', (req, res) =>{
    selectedDepartamento=req.query.selectedDepartamento;
    municipios = city_services.getMunicipios(selectedDepartamento)
    .then(municipios => res.send(municipios))
    .catch(err => console.log(err));
});

router.post('/add', (req, res) => {
    let {
        detail,
        departamento,
        municipio,
    } = req.body;
    console.log(req.body);
 
    address_services.create(detail, departamento, municipio)
        .then(res.render('/direccion'))
        .catch(err => console.log(err));
});

module.exports = router;
