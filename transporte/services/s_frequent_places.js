const db = require('../dbconfig/conex');
const Route = require('../models/m_frequent_place');
const express = require('express');
const bodyParser = require('body-parser');
const Sequelize = require('sequelize');

class address_services {
    constructor() {}
    getAll() {
        return Address.findAll({
            include: ['city', 'deparment']
        });
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