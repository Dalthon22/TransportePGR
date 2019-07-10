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

    create(procuraduria_name, address) {

        Procuraduria.create({
            procuraduria_name,
            address,
          })
        }
};

module.exports = new procuraduria_services();