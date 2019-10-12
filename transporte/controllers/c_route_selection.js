/*Arreglos para simular datos en la BD*/
var rutas = ['Aeropuerto', 'San Salvador', 'Ciudad Delgado', 'San Marcos', 'Olocuilta'];
var motoristas = ['José Hernández', 'José Martinez', 'José Gonzales', 'José Cortez'];

class route_selection_controller {

    constructor() {};

    async getList(req, res) {
        try {
            /* var ruta = await routes.findAll();  agregar motorista*/

            return res.render('../views/route_selection.html', {
                rutas,
                motoristas
                /* Procuradurias */
            });
        } catch (error) {
            console.log(error);
        }
    };



};

module.exports = new route_selection_controller();