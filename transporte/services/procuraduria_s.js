const db = require('../conex/conex');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;
const Car = require('../models/procuraduria_m');

class procuraduria_services {
    constructor() {}
    getAll() {
        Procuraduria.findAll()
    .then(Procuraduria => res.render('indexProcuraduria', {
        procuraduria
      }))
    .catch(err => console.log(err));
    }
}