const express = require('express')
const router = express.Router();
const auth_controller = require('../controllers/c_auth');

//Constantes para verificar si está logeado y para verificar permisos
const {
    is_logged,
    authorize
} = require('../middleware/auth');

//router.use(authorize('emp'))

router.get('/', (req, res) => {
    res.render('login.html');
});

router.post('/auth', async (req, res) => {
    var username = req.body.username;
    var password = req.body.password;
    if (username && password) {
        await auth_controller.log_in(username, password, req, res);
    } else {
        res.render('../views/login.html', {
            err_message: 'Usuario o contraseña no han sido ingresados',
            err_title: 'Datos incompletos'
        });
    }
});


module.exports = router;