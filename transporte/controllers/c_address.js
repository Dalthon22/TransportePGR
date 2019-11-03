const Address = require('../models/m_address');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');
const { validationResult } = require('express-validator');

class address_services {
  constructor() { }
  //Gets Addresses list
  async getList(req, res) {
    try {
      var Direcciones = await Address.findAll();
      res.send(Direcciones);
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
      if (selectedPlace != 10000) {
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
          department_id: idSelDepto
        });
      };
      res.send(dir); //Envío la dirección creada a la vista.
    } catch (error) {
      console.log(error);  //Muestra errores.
    };
  };

  //Elimina la dirección creada a través del ícono en la tabla.
  async deleteAddress(req, res) {
    try {
      let { id_address } = req.body; //Se obtiene el parámetro del cuerpo de la petición.
      await Address.destroy({ //Eliminación de la dirección.
        where: {
          id: id_address,
        }
      });
    } catch (error) {
      console.log(error); //Mensaje de error si lo hubiera.
    };
  };

  //Elimina todas las direcciones creadas al salir del Folo6.
  async deleteAddressList(req, res) {
    try {
      //Parseo del cuerpo de la petición para poder leer el array enviado dentro de él.
      req.body = JSON.parse(JSON.stringify(req.body));
      //Recorrido del cuerpo de la petición
      for (var key in req.body) {
        //Sin el parseo no es posible ejecutar el método dentro del if.
        if (req.body.hasOwnProperty(key)) {
          let value = req.body[key];
          await Address.destroy({ //Eliminación de las direcciones.
            where: {
              id: value,
            }
          });
          console.log('Se eliminó la dirección con el id ' + value); //Mensaje de éxito.
        };
      };
    } catch (error) {
      console.log(error); //Mensaje de error si lo hubiera.
    };
  };
};

module.exports = new address_services();