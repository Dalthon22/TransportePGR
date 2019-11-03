const Folo = require('../models/m_folo06');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');
const pdfPrinter = require('pdfmake/src/printer'); //Copiar esto
//const { validationResult } = require('express-validator');

class folo06_controller {
  constructor() { }

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

  async createFolo6(req, res) {
    //console.log(req);
  };

  async createPDF(req, res) {
    /* Se especifican 4 casos para creación del PDF:
    1. Sí quiere motorista y hay más de una dirección.
    2. No quiere motorista y hay más de una dirección.
    3. Sí quiere motorista y hay una sola dirección (caso ideal).
    4. No quiere motorista y hay una sola dirección. */
    try {
      console.log(req.body); //Muestra en consola el cuerpo de la petición para comprobar datos.
      let {
        fechaSolicitud,
        unidadSolicitante,
        fechaSalida,
        horaSalida,
        horaRetorno,
        motorista,
        cantidadPasajeros,
        personaConducir,
        tipoLicencia,
        direccion,
        direcciones,
        mision,
        observaciones,
        b
      } = req.body;
      /* Al pasar el Array a String también se convierten las comas que separan a cada uno de los
      elementos del array. Remuevo la coma al final de cada línea. */
      direcciones = direcciones.replace('.,\n', '.\n');
      if (motorista == 0) { // 0 = Sí ; 1 = No
        motorista = "Sí.";
      } else {
        motorista = "No.";
      };
      //Sí quiere motorista y hay más de una dirección.
      if (motorista == "Sí." && b == 1) {
        //Definición de fuentes a usar en el documento.
        const fonts = {
          Roboto: {
            normal: 'public/fonts/Roboto-Regular.ttf',
            bold: 'public/fonts/Roboto-Medium.ttf',
            italics: 'public/fonts/Roboto-Italic.ttf',
            bolditalics: 'public/fonts/Roboto-BoldItalic.ttf',
          }
        };
        //'printer' se encarga de escribir en el lienzo.
        const printer = new pdfPrinter(fonts);
        var today = new Date();
        var month = today.getMonth() + 1;
        // CUERPO DEL DOCUMENTO. NO TOCAR. >:V
        var docDefinition = {
          info: {
            //Nombre interno del documento.
            title: 'Solicitud de transporte FOLO-06 ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
          },
          pageSize: 'LETTER',
          content: [
            {
              image: 'public/images/logopgr1.png',
              fit: [60, 60],
              absolutePosition: { x: 70, y: 20 },
              writable: true,
            },
            {
              text: 'PROCURADURÍA GENERAL DE LA REPÚBLICA', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: 'SOLICITUD DE SERVICIO DE TRANSPORTE', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: '\n\nFOLO-06', alignment: 'right', bold: true, italics: true
            },
            {
              text: [
                { text: 'Fecha de solicitud: ', bold: true }, '' + fechaSolicitud
              ]
            },
            {
              text: [
                { text: '\nFecha de salida: ', bold: true }, '' + fechaSalida,
                { text: '          Hora de salida: ', bold: true }, '' + horaSalida,
                { text: '          Hora de regreso: ', bold: true }, '' + horaRetorno
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nMotorista: ', bold: true }, '' + motorista,
                { text: '                                   Cantidad de pasajeros: ', bold: true },
                '' + cantidadPasajeros
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nUnidad solicitante: ', bold: true }, '' + unidadSolicitante
              ],
            },
            {
              text: [
                { text: '\nLugar: ', bold: true }, '' + direccion
              ],
            },
            {
              text: [
                { text: '\nMisión: ', bold: true }, '' + mision
              ],
            },
            {
              text: [
                { text: '\nObservación: ', bold: true }, '' + observaciones
              ],
            },
            {
              text: '\n\n\n_______________________________________________', alignment: 'center'
            },
            {
              text: 'Nombre, firma y sello del solicitante\n\n\n', alignment: 'center'
            },
            {
              text: '\nAutorizado por: __________________________________________',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             (Funcionario que tiene asignado el vehículo)',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             Nombre, firma y sello',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '\n\nDatos del vehículo asignado:\n\n\n'
            },
            {
              text: 'Marca: _________________            Placa: _________________             Km. actual: _________________',
              preserveLeadingSpaces: true
            },
            {
              text: '\n\nCantidad de combustible a entregar en cupones _____________ en $_____________.'
            },
            {
              text: '\n\nNo. de los cupones entregados del _______________ al _______________.'
            },
            {
              text: '\n\n\n\n___________________________________________                 _________________________________________'
            },
            {
              text: 'Nombre y firma de quien recibe los cupones                 Nombre y firma del motorista o conductor',
              preserveLeadingSpaces: true, pageBreak: "after"
            },
            {
              text: 'ANEXO: Listado de direcciones.', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: [
                '\nLa siguiente lista se presenta en el formato:  ',
                {
                  text: '\"Nombre del lugar, detalle de dirección, departamento, municipio.\"',
                  bold: true, italics: true
                },
                ' Si encuentra un espacio en blanco entre comas es porque ese campo no se especificó.',
              ]
            },
            {
              text: direcciones
            },
          ],
        };
        //Se escribe en el documento el cuerpo previamente definido.
        const doc = printer.createPdfKitDocument(docDefinition);
        let chunks = [];
        let result;
        doc.on('data', (chunk) => {
          chunks.push(chunk);
        }); //Mete todo el texto del PDF en un Array.
        //doc.pipe(fs.createWriteStream('document1.pdf')); //Crea el PDF en local (server).
        /*Al finalizar el documento, se mete en un buffer la concatenación del Array
        y se guarda en 'result'. Este buffer es enviado a la vista en el response.*/
        doc.on('end', () => {
          result = Buffer.concat(chunks);
          //Se especifica el tipo de contenido que recibirá.
          res.setHeader('content-type', 'application/pdf');
          //Envío del PDF en forma base64.
          res.send("data:application/pdf;base64," + result.toString('base64'));
        });
        doc.end();
      };
      //La misma documentación de arriba se aplica para todos los casos posteriores.
      //NO quiere motorista y hay más de una dirección.
      if (motorista == "No." && b == 1) {
        const fonts = {
          Roboto: {
            normal: 'public/fonts/Roboto-Regular.ttf',
            bold: 'public/fonts/Roboto-Medium.ttf',
            italics: 'public/fonts/Roboto-Italic.ttf',
            bolditalics: 'public/fonts/Roboto-BoldItalic.ttf',
          }
        };
        const printer = new pdfPrinter(fonts);
        var today = new Date();
        var month = today.getMonth() + 1;
        var docDefinition = {
          info: {
            title: 'Solicitud de transporte FOLO-06 ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
          },
          pageSize: 'LETTER',
          content: [
            {
              image: 'public/images/logopgr1.png',
              fit: [60, 60],
              absolutePosition: { x: 70, y: 20 },
              writable: true,
            },
            {
              text: 'PROCURADURÍA GENERAL DE LA REPÚBLICA', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: 'SOLICITUD DE SERVICIO DE TRANSPORTE', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: '\n\nFOLO-06', alignment: 'right', bold: true, italics: true
            },
            {
              text: [
                { text: 'Fecha de solicitud: ', bold: true }, '' + fechaSolicitud
              ]
            },
            {
              text: [
                { text: '\nFecha de salida: ', bold: true }, '' + fechaSalida,
                { text: '          Hora de salida: ', bold: true }, '' + horaSalida,
                { text: '          Hora de regreso: ', bold: true }, '' + horaRetorno
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nMotorista: ', bold: true }, '' + motorista,
                { text: '                                   Cantidad de pasajeros: ', bold: true },
                '' + cantidadPasajeros
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nPersona a conducir: ', bold: true }, '' + personaConducir,
                { text: '                Tipo de licencia: ', bold: true },
                '' + tipoLicencia
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nUnidad solicitante: ', bold: true }, '' + unidadSolicitante
              ],
            },
            {
              text: [
                { text: '\nLugar: ', bold: true }, '' + direccion
              ],
            },
            {
              text: [
                { text: '\nMisión: ', bold: true }, '' + mision
              ],
            },
            {
              text: [
                { text: '\nObservación: ', bold: true }, '' + observaciones
              ],
            },
            {
              text: '\n\n\n_______________________________________________', alignment: 'center'
            },
            {
              text: 'Nombre, firma y sello del solicitante\n\n\n', alignment: 'center'
            },
            {
              text: '\nAutorizado por: __________________________________________',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             (Funcionario que tiene asignado el vehículo)',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             Nombre, firma y sello',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '\n\nDatos del vehículo asignado:\n\n\n'
            },
            {
              text: 'Marca: _________________            Placa: _________________             Km. actual: _________________',
              preserveLeadingSpaces: true
            },
            {
              text: '\n\nCantidad de combustible a entregar en cupones _____________ en $_____________.'
            },
            {
              text: '\n\nNo. de los cupones entregados del _______________ al _______________.'
            },
            {
              text: '\n\n\n\n___________________________________________                 _________________________________________'
            },
            {
              text: 'Nombre y firma de quien recibe los cupones                 Nombre y firma del motorista o conductor',
              preserveLeadingSpaces: true, pageBreak: "after"
            },
            {
              text: 'ANEXO: Listado de direcciones.', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: [
                '\nLa siguiente lista se presenta en el formato:  ',
                {
                  text: '\"Nombre del lugar, detalle de dirección, departamento, municipio.\"',
                  bold: true, italics: true
                },
                ' Si encuentra un espacio en blanco entre comas es porque ese campo no se especificó.',
              ]
            },
            {
              text: direcciones
            },
          ],
        };
        const doc = printer.createPdfKitDocument(docDefinition);
        let chunks = [];
        let result;
        doc.on('data', (chunk) => {
          chunks.push(chunk);
        });
        //doc.pipe(fs.createWriteStream('document1.pdf'));
        doc.on('end', () => {
          result = Buffer.concat(chunks);
          res.setHeader('content-type', 'application/pdf');
          res.send("data:application/pdf;base64," + result.toString('base64'));
        });
        doc.end();
      };

      //Sí quiere motorista y solo es una dirección.
      if (motorista == "Sí." && b == 0) {
        const fonts = {
          Roboto: {
            normal: 'public/fonts/Roboto-Regular.ttf',
            bold: 'public/fonts/Roboto-Medium.ttf',
            italics: 'public/fonts/Roboto-Italic.ttf',
            bolditalics: 'public/fonts/Roboto-BoldItalic.ttf',
          }
        };
        const printer = new pdfPrinter(fonts);
        var today = new Date();
        var month = today.getMonth() + 1;
        var docDefinition = {
          info: {
            title: 'Solicitud de transporte FOLO-06 ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
          },
          pageSize: 'LETTER',
          content: [
            {
              image: 'public/images/logopgr1.png',
              fit: [60, 60],
              absolutePosition: { x: 70, y: 20 },
              writable: true,
            },
            {
              text: 'PROCURADURÍA GENERAL DE LA REPÚBLICA', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: 'SOLICITUD DE SERVICIO DE TRANSPORTE', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: '\n\nFOLO-06', alignment: 'right', bold: true, italics: true
            },
            {
              text: [
                { text: 'Fecha de solicitud: ', bold: true }, '' + fechaSolicitud
              ]
            },
            {
              text: [
                { text: '\nFecha de salida: ', bold: true }, '' + fechaSalida,
                { text: '          Hora de salida: ', bold: true }, '' + horaSalida,
                { text: '          Hora de regreso: ', bold: true }, '' + horaRetorno
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nMotorista: ', bold: true }, '' + motorista,
                { text: '                                   Cantidad de pasajeros: ', bold: true },
                '' + cantidadPasajeros
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nUnidad solicitante: ', bold: true }, '' + unidadSolicitante
              ],
            },
            {
              text: [
                { text: '\nLugar: ', bold: true }, '' + direccion
              ],
            },
            {
              text: [
                { text: '\nMisión: ', bold: true }, '' + mision
              ],
            },
            {
              text: [
                { text: '\nObservación: ', bold: true }, '' + observaciones
              ],
            },
            {
              text: '\n\n\n_______________________________________________', alignment: 'center'
            },
            {
              text: 'Nombre, firma y sello del solicitante\n\n\n', alignment: 'center'
            },
            {
              text: '\nAutorizado por: __________________________________________',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             (Funcionario que tiene asignado el vehículo)',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             Nombre, firma y sello',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '\n\nDatos del vehículo asignado:\n\n\n'
            },
            {
              text: 'Marca: _________________            Placa: _________________             Km. actual: _________________',
              preserveLeadingSpaces: true
            },
            {
              text: '\n\nCantidad de combustible a entregar en cupones _____________ en $_____________.'
            },
            {
              text: '\n\nNo. de los cupones entregados del _______________ al _______________.'
            },
            {
              text: '\n\n\n\n___________________________________________                 _________________________________________'
            },
            {
              text: 'Nombre y firma de quien recibe los cupones                 Nombre y firma del motorista o conductor',
              preserveLeadingSpaces: true
            },
          ],
        };
        const doc = printer.createPdfKitDocument(docDefinition);
        let chunks = [];
        let result;
        doc.on('data', (chunk) => {
          chunks.push(chunk);
        });
        //doc.pipe(fs.createWriteStream('document1.pdf'));
        doc.on('end', () => {
          result = Buffer.concat(chunks);
          res.setHeader('content-type', 'application/pdf');
          res.send("data:application/pdf;base64," + result.toString('base64'));
        });
        doc.end();
      };

      //No quiere motorista y solo es una dirección.
      if (motorista == "No." && b == 0) {
        const fonts = {
          Roboto: {
            normal: 'public/fonts/Roboto-Regular.ttf',
            bold: 'public/fonts/Roboto-Medium.ttf',
            italics: 'public/fonts/Roboto-Italic.ttf',
            bolditalics: 'public/fonts/Roboto-BoldItalic.ttf',
          }
        };
        const printer = new pdfPrinter(fonts);
        var today = new Date();
        var month = today.getMonth() + 1;
        var docDefinition = {
          info: {
            title: 'Solicitud de transporte FOLO-06 ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
          },
          pageSize: 'LETTER',
          content: [
            {
              image: 'public/images/logopgr1.png',
              fit: [60, 60],
              absolutePosition: { x: 70, y: 20 },
              writable: true,
            },
            {
              text: 'PROCURADURÍA GENERAL DE LA REPÚBLICA', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: 'SOLICITUD DE SERVICIO DE TRANSPORTE', alignment: 'center', bold: true, italics: true,
              fontSize: '16'
            },
            {
              text: '\n\nFOLO-06', alignment: 'right', bold: true, italics: true
            },
            {
              text: [
                { text: 'Fecha de solicitud: ', bold: true }, '' + fechaSolicitud
              ]
            },
            {
              text: [
                { text: '\nFecha de salida: ', bold: true }, '' + fechaSalida,
                { text: '          Hora de salida: ', bold: true }, '' + horaSalida,
                { text: '          Hora de regreso: ', bold: true }, '' + horaRetorno
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nMotorista: ', bold: true }, '' + motorista,
                { text: '                                   Cantidad de pasajeros: ', bold: true },
                '' + cantidadPasajeros
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nPersona a conducir: ', bold: true }, '' + personaConducir,
                { text: '                Tipo de licencia: ', bold: true },
                '' + tipoLicencia
              ],
              preserveLeadingSpaces: true
            },
            {
              text: [
                { text: '\nUnidad solicitante: ', bold: true }, '' + unidadSolicitante
              ],
            },
            {
              text: [
                { text: '\nLugar: ', bold: true }, '' + direccion
              ],
            },
            {
              text: [
                { text: '\nMisión: ', bold: true }, '' + mision
              ],
            },
            {
              text: [
                { text: '\nObservación: ', bold: true }, '' + observaciones
              ],
            },
            {
              text: '\n\n\n_______________________________________________', alignment: 'center'
            },
            {
              text: 'Nombre, firma y sello del solicitante\n\n\n', alignment: 'center'
            },
            {
              text: '\nAutorizado por: __________________________________________',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             (Funcionario que tiene asignado el vehículo)',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '                             Nombre, firma y sello',
              alignment: 'center', preserveLeadingSpaces: true
            },
            {
              text: '\n\nDatos del vehículo asignado:\n\n\n'
            },
            {
              text: 'Marca: _________________            Placa: _________________             Km. actual: _________________',
              preserveLeadingSpaces: true
            },
            {
              text: '\n\nCantidad de combustible a entregar en cupones _____________ en $_____________.'
            },
            {
              text: '\n\nNo. de los cupones entregados del _______________ al _______________.'
            },
            {
              text: '\n\n\n\n___________________________________________                 _________________________________________'
            },
            {
              text: 'Nombre y firma de quien recibe los cupones                 Nombre y firma del motorista o conductor',
              preserveLeadingSpaces: true
            },
          ],
        };
        const doc = printer.createPdfKitDocument(docDefinition);
        let chunks = [];
        let result;
        doc.on('data', (chunk) => {
          chunks.push(chunk);
        });
        //doc.pipe(fs.createWriteStream('document1.pdf'));
        doc.on('end', () => {
          result = Buffer.concat(chunks);
          res.setHeader('content-type', 'application/pdf');
          res.send("data:application/pdf;base64," + result.toString('base64'));
        });
        doc.end();
      };
    } catch (err) {
      console.log(err);
    };
  };
};
module.exports = new folo06_controller();