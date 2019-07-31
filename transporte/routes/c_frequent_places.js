const router = require('../middleware/router');
const department_services = require('../services/s_department');
const city_services = require('../services/s_city');
const frequent_places_services = require('../services/s_frequent_places');
const {
    body,
    validationResult
} = require('express-validator');


router.get('/list', (req, res) => {
    Direcciones = frequent_places_services.getAll()
        .then(Direcciones => {
            res.render('../views/frequent_places/list.html', {
                Direcciones
            });
        })
        .catch(err => console.log(err));
});

router.get('/add', (req, res) => {
    Departamentos = department_services.getAll()
        .then(Departamentos => res.render('../views/frequent_places/add.html', {
            Departamentos
        }))
        .catch(err => console.log(err))
});
router.get('/getMunicipios', (req, res) => {
    selectedDepartamento = req.query.selectedDepartamento;
    municipios = city_services.getMunicipios(selectedDepartamento)
        .then(municipios => res.send(municipios))
        .catch(err => console.log(err));
});

/*router.post('/list', (req, res) => {

})*/



router.post('/add', (req, res) => {
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
        res.render('../views/frequent_places/add.html', {
            name,
            detail,
            departamento,
            municipio,
            errors: errors.array()
        });
    } else {
        console.log(req.body);
        frequent_places_services.create(name, detail, municipio, departamento)
            .then(res.redirect('/lugares_frecuentes/list'))
            .catch(err => console.log(err));
    }
});

module.exports = router;