const folo6 = require('../models/m_folo6');
const folo6_approve = require('../models/m_folo6_approve_state');
const employee = require('../models/m_employee');
var moment = require('moment');

const {
    validationResult
} = require('express-validator');
class approve_panel_controller {
    /* con get listUnit se utiliza para los jefes de unidad, mostrara solo los folos que no se han aprobado */
    async getListUnit(req, res, message, atype) {
        try {
            let id_unidad = 1;
            /* Traemos todos los folos de la unidad correspondiente haciendo Joins con las tablas empleado y estado del folo */
            var folos = await employee.findAll({
                include: [{
                    model: folo6,
                    raw: true,
                    required: true,
                    include: [{
                        model: folo6_approve,
                        where: {
                            request_unit_approve: 0,
                            unit_cancel_detail: null
                        }
                    }]
                }],
                where: {
                    unit_id: id_unidad
                }
            });
            var data = [];
            /*  */
            folos.forEach((employee, i) => {
                employee.folo6s.forEach((employeeFolos, i) => {
                    var el = new Object();
                    el.first_name = employee.first_name;
                    el.last_name = employee.last_name;
                    var formatted_date = moment.utc(employeeFolos.off_date).format("DD MMMM YYYY");
                    el.off_date = formatted_date;
                    el.passengers_number = employeeFolos.passengers_number;
                    el.mission = employeeFolos.mission;
                    el.folo6id = employeeFolos.id;
                    data.push(el);
                })
            });

            return res.render('../views/folo6/folo06_approve_panel_boss_unit.html', {
                data,
                message,
                atype
            });
        } catch (error) {
            console.log(error);
        }
    };

    async AprobarFoloUnidad(req, res) {
        try {
            let folo06id = await req.body.folo6_id_Amodal;
            await folo6_approve.update({
                request_unit_approve: 1
            }, {
                where: {
                    folo06_id: folo06id
                }
            });
            let message = 'true';
            let atype = 'true';
            this.getListUnit(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 'false';
            let atype = 'true';
            this.getListUnit(req, res, message, atype);
        }
    };

    async CancelarFoloUnidad(req, res) {
        try {
            let folo06id = await req.body.folo6_id_Cmodal;
            let motivoC = await req.body.motivo;
            console.log(folo06id);
            await folo6_approve.update({
                request_unit_approve: 0,
                unit_cancel_detail: motivoC
            }, {
                where: {
                    folo06_id: folo06id
                }
            });
            let message = 'true';
            let atype = 'false';
            this.getListUnit(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 'false';
            let atype = 'false';
            this.getListUnit(req, res, message, atype);
        }
    };

    /* con getListAllNew se utiliza para los jefes de transporte, mostrara solo los folos que no se han aprobado */
    async getListAllNew(req, res, message, atype) {
        try {
            let id_unidad = 1;
            var folos = await employee.findAll({
                include: [{
                    model: folo6,
                    raw: true,
                    required: true,
                    include: [{
                        model: folo6_approve,
                        where: {
                            request_unit_approve: 1,
                            transport_unit_approve: 0,
                            cancel_tunit_detail: null
                        }
                    }]
                }],
                where: {
                    unit_id: id_unidad
                }
            });
            console.log(folos);
            var data = [];
            folos.forEach((employee, i) => {
                employee.folo6s.forEach((employeeFolos, i) => {
                    var el = new Object();
                    el.first_name = employee.first_name;
                    el.last_name = employee.last_name;
                    var formatted_date = moment.utc(employeeFolos.off_date).format("DD MMMM YYYY");
                    el.off_date = formatted_date;
                    el.passengers_number = employeeFolos.passengers_number;
                    el.mission = employeeFolos.mission;
                    el.folo6id = employeeFolos.id;
                    data.push(el);
                })
            });
            console.log(data);
            return res.render('../views/folo6/folo06_approve_panel_transport.html', {
                data,
                message,
                atype
            });
        } catch (error) {
            console.log(error);
        }
    };
    async AprobarFoloTransporte(req, res) {
        try {
            let folo06id = await req.body.folo6_id_Amodal;
            await folo6_approve.update({
                transport_unit_approve: 1
            }, {
                where: {
                    folo06_id: folo06id
                }
            });
            let message = 'true';
            let atype = 'true';
            this.getListAllNew(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 'false';
            let atype = 'true';
            this.getListAllNew(req, res, message, atype);
        }
    };
    async CancelarFoloTransporte(req, res) {
        try {
            let folo06id = await req.body.folo6_id_Cmodal;
            let motivoC = await req.body.motivo;
            console.log(folo06id);
            await folo6_approve.update({
                request_unit_approve: 0,
                unit_cancel_detail: motivoC
            }, {
                where: {
                    folo06_id: folo06id
                }
            });
            let message = 'true';
            let atype = 'false';
            this.getListAllNew(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 'false';
            let atype = 'false';
            this.getListAllNew(req, res, message, atype);
        }
    };
}
module.exports = new approve_panel_controller();