const db = require('../dbconfig/conex');
const Address = require('../models/m_address');
const department_controller = require('../services/s_department');
const municipio_controller = require('../services/s_city');
const express = require('express');
const Sequelize = require('sequelize');
const { validationResult } = require('express-validator');

class address_services {
  constructor() { }
  //Gets Addresses list
  async getList(req, res) {
    try {
      var Direcciones = await Address.findAll({ include: ['city', 'department'] });
      return res.render('../views/address/list.html', {
        Direcciones
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Gets Departments List
  async getDepartmentList(req, res) {
    try {
      let Departamentos = await department_controller.getList();
      return res.render('../views/address/add.html', {
        Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Gets Municipios list based on the selected department
  async getMunicipiosByDepartamento(req, res) {
    try {
      let selectedDepartamento = req.query.selectedDepartamento;
      let municipios = await municipio_controller.getMunicipios(selectedDepartamento);
      res.send(municipios);
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the new address in the DB.
  async createAddress(req, res) {
    try {
      const errors = validationResult(req);
      let {
        detail, departamento, municipio,
      } = req.body;
      console.log(errors.array());
      //If there are errors, renders the same form, otherwise saves the new Address
      if (!errors.isEmpty()) {
        Departamentos = await department_controller.getList();
        res.render('../views/address/add.html', {
          detail, Departamentos, errors: errors.array()
        });
      }
      else {
        console.log(req.body);
        Address.create({ detail, city_id: municipio, deparment_id: departamento });
        res.redirect('/direccion');
      }
    } catch (error) {
      console.log(error);
    }
  };

  //Gets departments list and renders edit form
  async getUpdate(req, res) {
    try {
      let address_id = req.query.address_id;
      console.log(address_id);
      let Direccion = await Address.findByPk(address_id);
      let Departamentos = await department_controller.getList();
      return res.render('../views/address/edit.html', {
        Direccion, Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the edited address in the DB.
  async updateAddress(req, res) {
    try {
      const errors = validationResult(req);
      let {
        address_id, detail, departamento, municipio,
      } = req.body;
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the edited Address
        let Direccion = await Address.findByPk(route_id);
        let Departamentos = await department_controller.getList();
        res.render('../views/address/edit.html', {
          Direccion, Departamentos, errors: errors.array()
        });
      }
      else {
        console.log(req.body);
        Address.update({ detail, city_id: municipio, department_id: departamento },
          { where: { id: address_id } });
        res.redirect('/direccion');
      }
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new address_services();