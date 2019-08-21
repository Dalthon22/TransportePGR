const Departamento = require('../models/m_department');

class department_services {
  constructor() {}
  //Gets departments list
  async getList() {
    try {
      return await Departamento.findAll();
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new department_services();