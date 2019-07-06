const db = require('../dbconfig/conex');
const Procuraduria = require('../models/m_procuraduria');

class procuraduria_services {
    constructor() {}
    getAll() {
       return Procuraduria.findAll();
};

    create() {

    const data = {
        procuraduria_name: 'Procuraduría General de la República',
        address: 'San Salvador, San Salvador',
    }

    let { procuraduria_name, address } = data;

    //Insert into table
    Car.create({
        procuraduria_name,
        address,
        })
        .then(procuraduria => {
            return procuraduria;
        })
        .catch(error => console.log(error));
}


};

module.exports = new procuraduria_services();