const router = require('../middleware/router');



router.get('/list', (req, res) => {
    res.render('../views/frequent_places/list.html');
});

router.get('/add', (req, res) => {
    res.render('../views/frequent_places/add.html');
});

module.exports = router;