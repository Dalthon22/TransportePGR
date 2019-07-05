const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');

class procuraduria_services {
    constructor() {}
    getAll() {
       return Procuraduria.findAll();
};

    create() {

    }

};

module.exports = new procuraduria_services();