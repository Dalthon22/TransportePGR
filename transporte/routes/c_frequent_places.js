const router = require('../middleware/router');
const department_services = require('../services/s_department');
const city_services = require('../services/s_city');
const address_services = require('../services/s_address');


router.get('/list', (req, res) => {
    res.render('../views/frequent_places/list.html');
});

router.get('/add', (req, res) => {
    Departamentos = department_services.getAll()
        .then(Departamentos => res.render('../views/frequent_places/add.html', {
            Departamentos
        }))
        .catch(err => console.log(err))
});

module.exports = router;