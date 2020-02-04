const Mision = require('../models/m_mision');
const {
  validationResult
} = require('express-validator');

class Mision_controller {
  constructor() {}

  //Crear o editar una mision para folo06
  async getGestionar(req, res) {
    try {
      //Editar mision en la misma ruta
      //06102019_DD
      var Misi;
      let mis_id = req.query.mis_id;
      if (mis_id) {
        Misi = await Mision.findByPk(mis_id);
        return res.render('../views/mision/add.html', {
          Misi,
        });
      } else {
        Misi = await Mision.findByPk(mis_id);
        return res.render('../views/Mision/add.html', {
          Misi
        });
      };
    } catch (error) {
      console.log(error);
    }
  };

  //Listado de las misiones disponibles para folo06
  async getList(req, res) {
    try {
      var Misiones = await Mision.findAll({});
      return res.render('../views/mision/list.html', {
        Misiones
      });
    } catch (error) {
      console.log(error);
    }
  };

  //Creacion de la una nueva mision
  //Última edición: 03/11/2019 - Axel Hernández
  async createMision(req, res) {
    try {
      const errors = validationResult(req);
      let {
        name,
      } = req.body;
      //Para enviar si hay error
      //06102019_DD
      var mis = req.body;
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //Si hay errores, Renderiza de nuevo la pantalla
        res.render('../views/mision/add.html', {
          mis,
          errors: errors.array()
        });
      } else {
        console.log(req.body);
        Mision.create({
          Nombre_mision: name
        });
        res.redirect('/misiones');
      }
    } catch (error) {
      console.log(error);
    };
  };

  //Guarda los cambbios de la mision
  async updateMision(req, res) {
    try {
      const errors = validationResult(req);
      let {
        Misi_id,
        name,
      } = req.body;
      let mis = await Mision.findByPk(Misi_id);
      console.log(errors.array());
      if (!errors.isEmpty()) {
        //Si hay errores, Renderiza de nuevo la pantalla
        res.render('../views/mision/edit.html', {
          mis,
          errors: errors.array()
        });
      } else {
        console.log(req.body);
        Mision.update({
          Nombre_mision: name
        }, {
          where: {
            id: Misi_id
          }
        });
        res.redirect('/misiones');
      };
    } catch (error) {
      console.log(error);
    }
  };
  async deleteMisiones(req, res) {
    try {
      let Misi_id = req.query.mis_id;
      console.log(Misi_id);
      await Mision.update({
        Mision_activa: 0
      }, {
        where: {
          id: Misi_id
        }
      });
      res.redirect('/misiones');
    } catch (error) {
      res.redirect('/misiones');
    }
  };

  async activarMisiones(req, res) {
    try {
      let Misi_id = req.query.mis_id;
      console.log(Misi_id);
      await Mision.update({
        Mision_activa: 1
      }, {
        where: {
          id: Misi_id
        }
      });
      res.redirect('/misiones');
    } catch (error) {
      res.redirect('/misiones');
    }
  };

};



module.exports = new Mision_controller();