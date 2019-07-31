const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');
const express = require('express');
const Sequelize = require('sequelize');

class procuraduria_services {
    constructor() {}
    getAll() {
       return Procuraduria.findAll();
};

  create(name) {
    return Procuraduria.create({
      name,
    });
  };
};

module.exports = new procuraduria_services();
