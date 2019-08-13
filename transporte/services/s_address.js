const db = require('../dbconfig/conex');
const Address = require('../models/m_address');
const express = require('express');
const Sequelize = require('sequelize');

class address_services {
  constructor() {}

  getAll() {
    return Address.findAll({
      include: ['city', 'department']
    });
  };

  create(name, detail, city_id, department_id) {
    return Address.create({
      name,
      detail,
      city_id,
      department_id
    });
  };
};

module.exports = new address_services();