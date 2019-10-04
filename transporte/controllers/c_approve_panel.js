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
            folos.forEach((row, i) => {
                row.folo6s.forEach((frow, i) => {
                    var el = new Object();
                    el.first_name = row.first_name;
                    el.last_name = row.last_name;
                    var formatted_date = moment.utc(frow.off_date).format("DD MMMM YYYY");
                    el.off_date = formatted_date;
                    el.passengers_number = frow.passengers_number;
                    el.mission = frow.mission;
                    el.folo6id = frow.id;
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
            let message = 1;
            let atype = 1;
            this.getListUnit(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 0;
            let atype = 1;
            this.getListUnit(req, res, message, atype);
        }
    }
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
            let message = 1;
            let atype = 0;
            this.getListUnit(req, res, message, atype);
        } catch {
            console.log(error);
            error = 'No se actualizo el estado del folo BD ERROR.';
            let message = 0;
            let atype = 0;
            this.getListUnit(req, res, message, atype);
        }
    }

    /* con getListAllNew se utiliza para los jefes de transporte, mostrara solo los folos que no se han aprobado */
    async getListAllNew(req, res) {
        try {
            var folos = await folo6.findAll({
                include: [
                    employee
                ]
            });
            console.log(folos);
            return res.render('../views/folo06_approve_panel_transport.html', {
                folos
            });
        } catch (error) {
            console.log(error);
        }
    };
}
module.exports = new approve_panel_controller();