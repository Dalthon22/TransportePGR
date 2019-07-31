const db = require('../dbconfig/conex');
const Route = require('../models/m_route');
const express = require('express');
const bodyParser = require('body-parser');
const Sequelize = require('sequelize');

class route_services {
    constructor() {}
    getAll() {
       return Route.findAll();
};

  create(name) {

    return Route.create({
      name,
    });
  };
};

module.exports = new route_services();