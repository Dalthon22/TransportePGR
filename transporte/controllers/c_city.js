const db = require('../dbconfig/conex');
const Municipios = require('../models/m_city');
const express = require('express');

class city_services {
  constructor() { }
  //Gets municipios list
  getAll() {
    return Municipios.findAll();
  };

  //Gets a municipios list based on department_id
  async getMunicipios(selectedDepartamento) {
    try {
      return await Municipios.findAll({ where: { department_id: selectedDepartamento } });
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new city_services();