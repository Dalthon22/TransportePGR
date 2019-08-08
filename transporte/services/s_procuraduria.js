const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');
const express = require('express');
const Sequelize = require('sequelize');

class procuraduria_services {
  constructor() { }
  getAll() {
    return Procuraduria.findAll();
  };

  create(name) {
    return Procuraduria.create({
      name,
    });
  };

  getProcuraduriaByID(procu_id){
    return Procuraduria.findByPk(procu_id);
  };

  update(procu_id, name){
    return Procuraduria.update({name: name}, {where: {id: procu_id}})
  };
};

module.exports = new procuraduria_services();
