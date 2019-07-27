const db = require('../dbconfig/conex');
const Departamentos = require('../models/m_deparment');
const express = require('express');

class department_services {
    constructor() {}
    async getAll() {
       return await Departamentos.findAll();
};

    async getDepartamento(departamento){
      return await Departamentos.findByPk(departamento);
  };

  create(cnr_code, name) {
    return Departamentos.create({
      cnr_code,
      name,
    });
  };
};

module.exports = new department_services();