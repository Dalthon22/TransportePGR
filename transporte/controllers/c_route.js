const db = require('../dbconfig/conex');
const Route = require('../models/m_route');
const route_conditions = require('../models/m_route_conditions');
const department_controller = require('../controllers/c_department');
const express = require('express');
const Sequelize = require('sequelize');
const {
  validationResult
} = require('express-validator');


class Route_controller {
  constructor() { }

  //Gets routes list
  async getList(req, res) {
    try {
      var Routes = await Route.findAll({
        order: Sequelize.literal('id ASC')
      });
      return res.render('../views/route/list.html', {
        Routes
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Gets departments list and renders add form
  async getAdd(req, res) {
    try {
      return res.render('../views/route/add.html');
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the new route in the DB.
  async createRoute(req, res) {
    try {
      const errors = validationResult(req);
      let {
        name,
        monday,
        monday_frequency,
        tuesday,
        tuesday_frequency,
        wednesday,
        wednesday_frequency,
        thursday,
        thursday_frequency,
        friday,
        friday_frequency,
        saturday,
        saturday_frequency,
        sunday,
        sunday_frequency,
        enabled
      } = req.body;
      if (monday == 'on') {
        monday = true;
      } else {
        monday = false;
        monday_frequency = 0;
      };
      if (tuesday == 'on') {
        tuesday = true;
      } else {
        tuesday = false;
        tuesday_frequency = 0;
      };
      if (wednesday == 'on') {
        wednesday = true;
      } else {
        wednesday = false;
        wednesday_frequency = 0;
      };
      if (thursday == 'on') {
        thursday = true;
      } else {
        thursday = false;
        thursday_frequency = 0;
      };
      if (friday == 'on') {
        friday = true;
      } else {
        friday = false;
        friday_frequency = 0;
      };
      if (saturday == 'on') {
        saturday = true;
      } else {
        saturday = false;
        saturday_frequency = 0;
      };
      if (sunday == 'on') {
        sunday = true;
      } else {
        sunday = false;
        sunday_frequency = 0;
      };
      if (enabled == 'on') {
        enabled = true;
      } else {
        enabled = false;
      };
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the new route in the DB.
        res.render('../views/route/add.html', {
          name,
          errors: errors.array()
        });

      } else {
        console.log(req.body);
        var conditions = await route_conditions.create({
          monday,
          monday_frequency,
          tuesday,
          tuesday_frequency,
          wednesday,
          wednesday_frequency,
          thursday,
          thursday_frequency,
          friday,
          friday_frequency,
          saturday,
          saturday_frequency,
          sunday,
          sunday_frequency,
        });
        Route.create({
          name,
          enabled,
          route_conditions_id: conditions.id,
        });
        res.redirect('/rutas');
      }
    } catch (error) {
      console.log(error);
    };
  };

  //Gets departments list and renders edit form
  async getUpdate(req, res) {
    try {
      let route_id = req.query.route_id;
      console.log(route_id);
      let Ruta = await Route.findByPk(route_id);
      return res.render('../views/route/edit.html', {
        Ruta
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
      } = req.body;
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the new route in the DB.
        let Ruta = await Route.findByPk(route_id);
        res.render('../views/route/edit.html', {
          Ruta,
          errors: errors.array()
        });
      } else {
        console.log(req.body);
        Route.update({
          name: name,
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