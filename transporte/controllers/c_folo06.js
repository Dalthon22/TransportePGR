const db = require('../dbconfig/conex');
const Folo = require('../models/m_folo06');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');
const express = require('express');
const { validationResult } = require('express-validator');

class folo06_services {
    constructor(){}

  //Gets Departments List
  async getDepartmentList(req, res) {
    try {
      let Departamentos = await department_controller.getList();
      return res.render('../views/folo06.html', {
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
}