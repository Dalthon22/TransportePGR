const db = require('../dbconfig/conex');
const Departamentos = require('../models/m_department');
const express = require('express');

class department_services {
  constructor() {}
  //Gets departments list
  async getList() {
    try {
      return await Departamentos.findAll();
    } catch (error) {
      console.log(error);
    }
  };
};

module.exports = new department_services();