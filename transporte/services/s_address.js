const db = require('../dbconfig/conex');
const Address = require('../models/m_address');
const express = require('express');
const Sequelize = require('sequelize');

class address_services {
    constructor() {}
     getAll() {
       return Address.findAll();
};

  create(name, detail, city_id, deparment_id) {
    return Address.create({
      name,
      detail,
      city_id,
      deparment_id
    });
  };
};

module.exports = new address_services();