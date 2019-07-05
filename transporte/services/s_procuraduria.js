const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');

class procuraduria_services {
    constructor() {}
    getAll() {
        Procuraduria.findAll()
            .then(procuradurias => {
                console.log(procuradurias);
                return procuradurias;
            })
            .catch(error => console.log(error));
};

    create() {

    }

};

module.exports = new procuraduria_services();