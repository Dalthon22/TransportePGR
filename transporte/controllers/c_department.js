const Departamento = require('../models/m_department');

class Department_controller {
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

module.exports = new Department_controller();