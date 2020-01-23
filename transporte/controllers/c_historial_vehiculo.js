const Historial = require('../models/m_historial_uso_vehiculo');

class historial_vehiculo_controller {
    constructor() {

    }


    /*
    Inserta un registro en la tabla de transacciones
     */
    async Create(vehicle, codeDes = '1', user_session = '') {
        try {
            if (vehicle.CodigoActivoFijo) {
                var new_record = await Historial.create({
                    FechaHoraUso: new Date(),
                    CodigoActivoFijo_Vehiculo: vehicle.CodigoActivoFijo,
                    CodigoDescripcionUso: codeDes,
                    ResponsableRegistro: user_session.CodigoUsuario
                });
                var registry = JSON.stringify(new_record)
                console.log(registry);
                return registry;
            } else {
                throw "Vehículo no definido";
            }
        } catch (error) {
            console.log(error)
        }
    }


};

module.exports = new historial_vehiculo_controller();