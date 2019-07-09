const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');

class procuraduria_services {
    constructor() {}
    getAll() {
       return Procuraduria.findAll();
};

    Create(name, address) {
      return Procuraduria.create({
        name,
        address,
      });
    };
};

module.exports = new procuraduria_services();