const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');
const express = require('express');
const bodyParser = require('body-parser');
const Sequelize = require('sequelize');

class procuraduria_services {
    constructor() {}
    getAll() {
       return Procuraduria.findAll();
};

    create(name, address) {
      const created_at = new Date();
        return Procuraduria.create({
            name,
            address,
            created_at,
          })
        }
};

module.exports = new procuraduria_services();