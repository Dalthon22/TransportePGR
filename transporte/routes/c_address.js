const express = require('express');
const router = express.Router();
const department_services = require('../services/s_department');
const city_services = require('../services/s_city');
const address_services = require('../services/s_address');

//get address list
router.get('/', (req, res) => {
    Direcciones = address_services.getAll()
    .then(Direcciones => { 
        let i;
        //Declaro arrays vacíos que contendrán los strings de los nombres de los departamentos y municipios
        let departamento = [];
        let municipio = [];
        //Recorro Direcciones para extraer dichos nombres.
        for (i=0; Direcciones.length; i++){
            /*El nombre del departamento se almacena en la posición i de departamento,
            esta consulta se ejecuta y la ejecución muestra en consola sus nombres, pero la
            asignación se muestra undefined. La misma lógica para municipio.*/
            /*El problema yace en la asignación, ya que las consultas se ejecutan y se muestran
            esos valores en la consola*/
            departamento[i] = department_services.getDepartamentoById(Direcciones[i].deparment_id);
            municipio[i] = city_services.getMunicipioById(Direcciones[i].city_id);
            /*En teoría se deberían mostrar el array de nombres pero en su lugar muestra undefined.
            Si uso el .then en cada uno de los métodos anteriores lanza el error: 
            "Cannot read .then of undefined".*/
            console.log(departamento);
            console.log(municipio);
        }
        //Envío los 3 arreglos a la vista, pero ahorita solo está configurada para usar Direcciones
        res.render('../views/address/list.html', {
            Direcciones, departamento, municipio
        });
    })
    .catch(err => console.log(err));
});

// Get departments list
router.get('/add', (req, res) => {
    Departamentos = department_services.getAll()
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
        name,
        detail,
        departamento,
        municipio,
    } = req.body;
    console.log(req.body);
 
    address_services.create(name, detail, municipio, departamento)
        .then(res.render('/direccion'))
        .catch(err => console.log(err));
});

module.exports = router;
