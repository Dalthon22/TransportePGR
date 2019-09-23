const Address = require('../models/m_address');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');
const { validationResult } = require('express-validator');

class address_services {
  constructor() {}
  //Gets Addresses list
  async getList(req, res) {
    try {
      var Direcciones = await Address.findAll({
        include: ['city', 'department']
      });
      return res.render('../views/address/list.html', {
        Direcciones
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Gets Municipios list based on the selected department
  async getMunicipiosByDepartamento(req, res) {
    try {
      let selectedDepartamento = req.query.selectedDepartamento;
      let municipios = await municipio_controller.getMunicipios(selectedDepartamento);
      res.send(municipios);
    } catch (error) {
      console.log(error);
    }
  };

  //Saves the new address in the DB.
  async createAddress(req, res) {
    try {
      let dir; //Creo variable que contendrá el objeto Dirección
      let {
        idSelDepto, idSelMun, selectedPlace, destinyPlace, direction, selectedPlaceTxt
      } = req.body //Saco los atributos del cuerpo de la petición
      console.log(req.body); //Imprimo la petición para comprobar los datos.
      if(selectedPlace!=10000){ 
        //Si el lugar seleccionado es diferente de "Otro", solo guardará los valores de los dropdown
        dir = await Address.create({
          name: selectedPlaceTxt,
          city_id: idSelMun,            //Creo dirección
          department_id: idSelDepto
        });
      } else {//De lo contrario guardará depto y municipio del dropdown; nombre y dirección de los inputs.
        dir = await Address.create({
          name: destinyPlace,
          detail: direction,           //Creo dirección
          city_id: idSelMun,
          department_id:idSelDepto
        });
      };
      res.send(dir); //Envío la dirección creada a la vista.
    } catch (error) {
      console.log(error);  //Muestra errores.
    };
  };
};

module.exports = new address_services();