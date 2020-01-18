const Asignacion = require('../models/m_voucher_folo6_assign');
const Vehiculo = require('../models/m_vehicle');
const employee = require('../models/m_employee');
const folo6 = require('../models/m_folo6');
const driver = require('../models/m_driver');
const driver_assign = require('../models/m_driver_assign');
const folo6_approve = require('../models/m_folo6_approve_state');
const Vales = require('../models/m_voucher');
const Vehicle_folo6_assign = require('../models/m_vehicle_folo6_assign');

//Manejo de fechas
var moment = require('moment');
moment.locale("Es-SV")

const {
    validationResult
} = require('express-validator');

class assign_controller {
    constructor() {}

    async getAsignarVales(req, res, data_modal) {
        try {
            /* Se buscan todos los folos que hayan sido aprobados por cada unidad */
            /* Se hace un join de Empleados,Folo6 y folo6_apporve */
            var folos = await folo6.findAll({
                include: [{
                    model: Vehicle_folo6_assign,
                    raw: true,
                    required: true,
                    include: [{
                        model: Vehiculo,
                        raw: true,
                    }]
                }, {
                    model: folo6_approve,
                    where: {
                        transport_unit_approve: 1,
                        car: 1, //Vehiculo asignado
                        driver_assigned: 1,
                        gasoline: 0, //Aprobados
                        cancel_tunit_detail: null //Que no haya sido cancelado
                    }
                }]
            });
            /* Se enviara un array con todos los folos con los datos a mostrar */
            var data = [];
            /* Recorremos cada empleado y luego por todos los folos que tienen */
            folos.forEach((folo, i) => {
                /* Se asignara a una variable el para luego ñadirla a la data */
                var el = new Object();
                el.V_model = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.model;
                el.V_brand = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.brand;
                el.V_Plate = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.plate;
                el.V_id = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.id;
                el.Veh_f06_id = folo.SGT_Vehiculo_Asignado_Folo6.id;
                var formatted_date = moment.utc(folo.off_date).format("DD MMMM YYYY");
                el.off_date = formatted_date;
                el.passengers_number = folo.passengers_number;
                el.mission = folo.mission;
                el.folo6id = folo.id;
                el.wDriver = folo.with_driver;
                el.off_hour = moment.utc(folo.off_hour).format("h:mm A");
                data.push(el);

            });
            var Cars = await Vehiculo.findAll({
                where: {
                    state: 'Funcional',
                }
            });
            return res.render('../views/voucher/assign.html', {
                Cars,
                data,
            });
        } catch (error) {
            console.log(error);
        }
    };
    async crearAsignacionVales(req, res) {
        try {
            const errors = validationResult(req);
            let {
                cant,
                foloA_id,
                mileage_inserted,
                fecha_folo,
                veh_model,
                veh_plate,
                d_name
            } = req.body;
            if (!errors.isEmpty()) {
                getAsignar(req, res);
            } else {
                console.log(mileage_inserted);
                console.log(cant);
                console.log(foloA_id);
                var cantidad = parseInt(cant);
                var data_modal = [];
                data_modal.vales = [];
                data_modal.suma = 0;
                data_modal.v_model = veh_model;
                data_modal.v_plate = veh_plate;
                data_modal.mileage = mileage_inserted;
                data_modal.driver = d_name;
                try {
                    var vales_lista = await Vales.findAll({
                        attributes: ['num_voucher', 'num_entry_bill', 'voucher_provider', 'price'],
                        limit: cantidad,
                        where: {
                            condition: 'Disponible',
                        }
                    });
                    console.log(vales_lista);
                    var fecha = moment.utc(fecha_folo, 'DD MMMM YYYY').format('YYYY/MM/DD')
                    let v = [];
                    for (var i = 0; i < cant; i++) {
                        console.log(vales_lista[i].num_voucher);
                        await Asignacion.create({
                            date_voucher_f6: fecha,
                            num_voucher: vales_lista[i].num_voucher,
                            folo6_id: foloA_id,
                        });
                        await Vales.update({
                            condition: 'Asignado',
                        }, {
                            where: {
                                num_voucher: vales_lista[i].num_voucher,
                                num_entry_bill: vales_lista[i].num_entry_bill,
                                voucher_provider: vales_lista[i].voucher_provider
                            }
                        });
                        v.num_voucher = vales_lista[i].num_voucher;
                        v.num_entry_bill = vales_lista[i].num_entry_bill;
                        v.voucher_provider = vales_lista[i].voucher_provider;
                        v.price = vales_lista[i].price;
                        data_modal.suma = data_modal.suma + parseInt(vales_lista[i].price);
                        data_modal.vales.push(v);
                    }
                    await folo6_approve.update({
                        gasoline: 1
                    }, {
                        where: {
                            folo06_id: foloA_id
                        }
                    });
                    await Vehicle_folo6_assign.update({
                        mileage: mileage_inserted
                    }, {
                        where: {
                            folo06_id: foloA_id
                        }
                    });
                    this.getAsignarVales(req, res, data_modal)
                    /* res.redirect('/asignar_recursos/vales'); */
                } catch (errors) {
                    console.log(errors);
                    res.redirect('/asignar_recursos/vales');
                }
            }
        } catch (error) {
            console.log(error);
        }
    };

    async getAsignaciones(req, res) {
        var plate = "P1234";

    }

}

module.exports = new assign_controller();