const Folo = require('../models/m_folo06');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');
const { validationResult } = require('express-validator');

class folo06_controller {
    constructor(){}

  //Gets Departments List
  async getDepartmentList(req, res) {
    try {
      let Departamentos = await department_controller.getList();
      return res.render('../views/folo06/add.html', {
        Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new folo06_controller();