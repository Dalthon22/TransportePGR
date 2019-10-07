const db = require('../dbconfig/conex');
const Route = require('../models/m_route');
const department_controller = require('../controllers/c_department');
const express = require('express');
const Sequelize = require('sequelize');
const {
  validationResult
} = require('express-validator');


class Route_controller {
  constructor() {}

  //Gets routes list
  async getList(req, res) {
    try {
      var Routes = await Route.findAll();
      return res.render('../views/route/list.html', {
        Routes
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Gets departments list and renders add form
  async getDepartmentList(req, res) {
    try {
      let Departamentos = await department_controller.getList();
      return res.render('../views/route/add.html', {
        Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the new procuraduría in the DB.
  async createRoute(req, res) {
    try {
      const errors = validationResult(req);
      let {
        name,
        departamento,
        municipio
      } = req.body;
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the new route in the DB.
        let Departamentos = await department_controller.getList();
        res.render('../views/route/add.html', {
          Departamentos,
          name,
          errors: errors.array()
        });

      } else {
        console.log(req.body);
        Route.create({
          name,
          city_id: municipio,
          department_id: departamento
        });
        res.redirect('/rutas');
      }
    } catch (error) {
      console.log(error);
    }
  };

  //Gets departments list and renders edit form
  async getUpdate(req, res) {
    try {
      let route_id = req.query.route_id;
      console.log(route_id);
      let Ruta = await Route.findByPk(route_id);
      let Departamentos = await department_controller.getList();
      return res.render('../views/route/edit.html', {
        Ruta,
        Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the edited route in the DB.
  async updateRoute(req, res) {
    try {
      const errors = validationResult(req);
      let {
        route_id,
        name,
        departamento,
        municipio,
      } = req.body;
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the new route in the DB.
        let Ruta = await Route.findByPk(route_id);
        let Departamentos = await department_controller.getList();
        res.render('../views/route/edit.html', {
          Ruta,
          Departamentos,
          errors: errors.array()
        });
      } else {
        console.log(req.body);
        Route.update({
          name: name,
          city_id: municipio,
          department_id: departamento
        }, {
          where: {
            id: route_id
          }
        });
        res.redirect('/rutas');
      }
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new Route_controller();