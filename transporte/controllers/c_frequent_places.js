const db = require('../dbconfig/conex');
const frequent_place = require('../models/m_frequent_place');
const department_controller = require('../services/s_department');
const municipio_controller = require('../services/s_city');
const express = require('express');
const Sequelize = require('sequelize');
const {
    validationResult
} = require('express-validator');

class frequent_place_controller {

    constructor() {}

    async getList(req, res) {
        try {
            var fplaces = await frequent_place.findAll({
                include: ['city', 'department']
            });
            return res.render('../views/frequent_places/list.html', {
                fplaces
            });
        } catch (error) {
            console.log(error);
        }
    };
    async getMunicipiosByDepartamento(req, res) {
        try {
            let selectedDepartamento = req.query.selectedDepartamento;
            let municipios = await municipio_controller.getMunicipios(selectedDepartamento);
            res.send(municipios);
        } catch (error) {
            console.log(error);
        }
    };

    async getAdd(req, res) {
        try {
            let Departamentos = await department_controller.getList();
            return res.render('../views/frequent_places/add.html', {
                Departamentos
            })
        } catch (error) {
            console.log(error);
        }

    };

    async createFrequentPlace(req, res) {
        try {
            const errors = validationResult(req);
            let {
                name,
                detail,
                departamento,
                municipio,
            } = req.body;
            let fplace_id = await req.query.fplace_id;
            let edit = await req.query.edit;
            console.log(errors.array());
            console.log(edit);
            console.log(fplace_id);
            if (!errors.isEmpty()) {
                let Departamentos = await department_controller.getList();
                res.render('../views/frequent_places/add.html', {
                    name,
                    detail,
                    departamento,
                    Departamentos,
                    municipio,
                    edit,
                    fplace_id,
                    errors: errors.array()
                });
            } else {
                try {
                    frequent_place.create({
                        name,
                        detail,
                        city_id: municipio,
                        department_id: departamento
                    });
                    let Mstate2 = true;
                    let Departamentos = await department_controller.getList();
                    res.render('../views/frequent_places/add.html', {
                        Departamentos,
                        Mstate2
                    })
                } catch (error) {
                    console.log(error);
                    let Mstate = true;
                    let Departamentos = await department_controller.getList();
                    res.render('../views/frequent_places/add.html', {
                        Departamentos,
                        Mstate
                    });
                }

            }
        } catch (error) {
            console.log(error);
        }
    }
    async editFrequentPlace(req, res) {
        try {
            frequent_place.update({
                name: name,
                detail: detail,
                city_id: municipio,
                department_id: departamento
            }, {
                where: {
                    id: fplace_id
                }
            });
            res.redirect('/lugares_frecuentes');
        } catch (error) {
            console.log(error);
            let Mstate = true;
            let Departamentos = await department_controller.getList();
            res.render('../views/frequent_places/add.html', {
                departamento,
                municipio,
                edit,
                name,
                detail,
                Departamentos,
                Mstate
            });
        }
    }

    async deleteFrequentPlace(req, res) {
        this.getList(req, res);
    }

    async getUpdate(req, res) {
        try {
            let fplace_id = await req.query.fplace_id;
            let place = await frequent_place.findByPk(fplace_id);
            let name = place.name;
            let true_name = name;
            let detail = place.detail;
            let municipio = place.city_id;
            let departamento = place.department_id;
            let edit = true;
            let Departamentos = await department_controller.getList();
            return res.render('../views/frequent_places/add.html', {
                name,
                detail,
                departamento,
                municipio,
                Departamentos,
                edit,
                fplace_id,
                true_name
            })
        } catch (error) {
            console.log(error);
        }

    };


}

module.exports = new frequent_place_controller();