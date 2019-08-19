const Department = require('./m_department');
const City = require('../models/m_city');
/* const Car = require('../models/m_car');
const Route = require('../models/m_route');
 */
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
/* const Frequent_Place = require('../models/m_frequent_place'); */

class Migration {
    constructor() {
        /*         Car.sync();
                Frequent_Place.sync();
                Route.sync(); */
        Address.sync();
        Procuraduria.sync();
        /* City.sync();
        Department.sync(); */
    }
}

module.exports = Migration;
