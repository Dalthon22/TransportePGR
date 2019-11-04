const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
const Departamento = require('../controllers/c_department');
const {
  validationResult
} = require('express-validator');

class Procuraduria_controller {
  constructor() {}
  //Gets procuradurías list

  async getCreate(req, res) {
    try {
      let Departamentos = await Departamento.getList();
      console.log(Departamentos);
      return res.render('../views/procuraduria/add.html', {
        Departamentos
      });
    } catch (error) {
      console.log(error);
    }
  };

  async getList(req, res) {
    try {
      var Procuradurias = await Procuraduria.findAll();
      return res.render('../views/procuraduria/list.html', {
        Procuradurias
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the new procuraduría in the DB.
  async createProcuraduria(req, res) {
    //Gets values from the body of the request
    try {
      const errors = validationResult(req);
      let {
        name,
        detail,
        departamento,
        municipio,
      } = req.body;
      console.log(errors.array()); //Displays errors in console
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the new Procuraduría
        res.render('../views/procuraduria/add.html', {
          name,
          detail,
          departamento,
          municipio,
          errors: errors.array()
        });
      } else {
        console.log(req.body); //Displays the body of the request in console
        let Dir = await Address.create({
          detail,
          city_id: municipio,
          department_id: departamento
        }); //Saves address in the DB
        console.log(Dir.id);
        Procuraduria.create({
          name,
          address_id: Dir.id, 
        }); //Saves procuraduría in the DB
        res.redirect('/instituciones');
      }
    } catch (error) {
      console.log(error); //Displays errors in console
    }
  };

  //Renders edit form
  async getUpdate(req, res) {
    try {
      //Gets values from the DB
      let procu_id = req.query.procu_id;
      console.log(procu_id);
      let Procu = await Procuraduria.findByPk(procu_id);
      let Dir = await Address.findByPk(Procu.address_id);
      let detail = Dir.detail;
      let departamento = Dir.department_id;
      let municipio = Dir.city_id;
      let Departamentos = await Departamento.getList();
      //Renders the edit form with all the values
      return res.render('../views/procuraduria/add.html', {
        Procu, 
        detail, 
        departamento, 
        municipio, 
        Departamentos
      });
    } catch (error) {
      console.log(error); //Displays errors in console
    }
  };

  //Saves the edited procuraduria in the DB
  async updateProcuraduria(req, res) {
    try {
      const errors = validationResult(req);
      let { //Gets values from the body of the request
        procu_id,
        address_id,
        name,
        detail,
        departamento,
        municipio
      } = req.body;
      console.log(errors.array()); //Displays errors in console
      let Procu = await Procuraduria.findByPk(procu_id);
      if (!errors.isEmpty()) {
        //If there are errors, renders the same form, otherwise saves the edited Procuraduría
        res.render('../views/procuraduria/add.html', {
          Procu,
          detail,
          departamento,
          municipio,
          errors: errors.array()
        });
      } else {
        console.log(req.body); //Displays the body of the request in console
        //Updates Address
        Address.update({
          city_id: municipio,
          department_id: departamento,
          detail,
        }, {
            where: {
              id: address_id
            }
          });
        //Updates Procuraduría
        Procuraduria.update({
          name, 
        }, {
          where: {
            id: procu_id
          }
        });
        res.redirect('/instituciones'); //Redirects to Procuradurías List
      }
    } catch (error) {
      console.log(error); //Displays errors in console
    }
  };
};

module.exports = new Procuraduria_controller();