const Municipios = require('../models/m_city');


class City_controller {
  constructor() {}
  //Gets municipios list
  getAll() {
    return Municipios.findAll();
  };

  //Gets a municipios list based on department_id
  async getMunicipios(selectedDepartamento) {
    try {
      return await Municipios.findAll({
        where: {
          department_id: selectedDepartamento
        }
      });
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new City_controller();