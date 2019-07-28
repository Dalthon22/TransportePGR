const db = require('../dbconfig/conex');
const Departamentos = require('../models/m_deparment');
const express = require('express');

class department_services {
  constructor() { }
  getAll() {
    return Departamentos.findAll();
  };

  //Método para obtener el objeto departamento dependiendo del id
  //De momento sin async/await, si lo hago me imprime un Promise pending en el controller de address
  getDepartamentoById(departamento) {
    Departamentos.findByPk(departamento)
      .then(Departamentos => {
        //muestra en consola el dato que quiero enviar al controller de address y lo retorno
        console.log(Departamentos.name);
        return Departamentos.name;
      });
  };

  create(cnr_code, name) {
    return Departamentos.create({
      cnr_code,
      name,
    });
  };
};

module.exports = new department_services();