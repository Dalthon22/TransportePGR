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
                municipio
            } = req.body;
            console.log(errors.array());
            if (!errors.isEmpty()) {
                let Departamentos = await department_controller.getList();
                res.render('../views/frequent_places/add.html', {
                    name,
                    detail,
                    departamento,
                    Departamentos,
                    municipio,
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

    async deleteFrequentPlace(req, res) {
        this.getList(req, res);
    }

    async getUpdate(req, res) {
        try {
            let place_name = await req.query.fplace_name;
            console.log(place_name);
            let place = await frequent_place.findOne({
                where: {
                    name: place_name
                }
            });
            console.log(place);
            let name = place.name;
            let detail = place.detail;
            let municipio = place.municipio;
            let departamento = place.departamento;

            let Departamentos = await department_controller.getList();
            return res.render('../views/frequent_places/edit.html', {
                name,
                detail,
                departamento,
                municipio,
                Departamentos
            })
        } catch (error) {
            console.log(error);
        }

    };


}

module.exports = new frequent_place_controller();