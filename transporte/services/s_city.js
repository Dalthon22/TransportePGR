const db = require('../dbconfig/conex');
const Municipios = require('../models/m_city');
const express = require('express');

class city_services {
    constructor() {}
    async getAll() {
       return await Municipios.findAll();
    };

    async getMunicipio(municipio){
      return await Municipios.findByPk(municipio);
  };

  create(cnr_code, name) {
    return Municipios.create({
      cnr_code,
      name,
    });
  };

  getMunicipios(selectedDepartamento) {
    return Municipios.findAll({ where: {deparment_id: selectedDepartamento}});
    };
};

module.exports = new city_services();