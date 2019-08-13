const db = require('../dbconfig/conex');
const Municipios = require('../models/m_city');
const express = require('express');

class city_services {
  constructor() {}
  getAll() {
    return Municipios.findAll();
  };

  async getMunicipios(selectedDepartamento) {
    try {
      return await Municipios.findAll({
        where: {
          department_id: selectedDepartamento
        }
      });
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new city_services();