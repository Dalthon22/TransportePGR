const express = require('express');
const router = express.Router();
const pdfPrinter = require('pdfmake/src/printer');
const jwt = require('jsonwebtoken');
const secret_token = require('../dbconfig/secret_token');

//Router para testear modificaciones a realizar en PDFs.
router.get('/', (req, res) => {
  try {
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
    let token = jwt.verify(req.cookies.token, secret_token);
    // CUERPO DEL DOCUMENTO. NO TOCAR. >:V
    var docDefinition = {
      info: {
        //Nombre interno del documento.
        title: 'Reporte lote de vehículos ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
      },
      pageSize: 'LETTER',
      footer: [
        {
          text: 'Fecha de generación: ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
          alignment: 'right', fontSize: '9', italics: true, margin: [15, 0]
        },
        {
          text: 'Generado por: ' + token.user.first_name + ' ' + token.user.last_name,
          alignment: 'right', fontSize: '9', italics: true, margin: [15, 0]
        },
      ],
      content: [{
        image: 'public/images/logopgr1.png',
        fit: [60, 60],
        absolutePosition: {
          x: 50,
          y: 20
        },
        writable: true,
      },
      {
        text: 'Procuraduría General de la República - Unidad de Transporte\n\n\n',
        alignment: 'center',
        fontSize: '12'
      },
      {
        text: 'Inventario de vehículo #\n\n\n',
        alignment: 'center',
        fontSize: '12'
      },
      {
        table: {
          headerRows: 0,
          widths: ['*', '*'],
          body: [
            [{ text: 'Marca', bold: true }, 'Val 2'],
            [{ text: 'Modelo', bold: true }, 'Val 2'],
            [{ text: 'Color', bold: true }, 'Val 2'],
            [{ text: 'Año', bold: true }, 'Val 2'],
            [{ text: 'Capacidad', bold: true }, 'Val 2'],
            [{ text: 'Número de motor', bold: true }, 'Val 2'],
            [{ text: 'Número de chasis', bold: true }, 'Val 2'],
            [{ text: 'Kilometraje', bold: true }, 'Val 2'],
            [{ text: 'Número de placa', bold: true }, 'Val 2'],
            [{ text: 'Cantidad de pasajeros', bold: true }, 'Val 2'],
            [{ text: 'Estado del vehículo', bold: true }, 'Val 2'],
            [{ text: 'Tipo de vehículo', bold: true }, 'Val 2'],
            [{ text: 'Tipo de combustible', bold: true }, 'Val 2'],
            [{ text: 'Observaciones', bold: true }, 'Val 2'],
            [{ text: 'Procuraduría/Unidad asignada', bold: true }, 'Val 2'],
            [{ text: 'Id de solicitudes Folo-06 atendidas', bold: true }, 'Val 2']
          ]
        },
      }],
    };

    const doc = printer.createPdfKitDocument(docDefinition);

    let chunks = [];
    let result;
    doc.on('data', (chunk) => {
      chunks.push(chunk);
    });

    doc.on('end', () => {
      result = Buffer.concat(chunks);
      res.setHeader('content-type', 'application/pdf');
      res.send(result);
    });

    doc.end();
  } catch (err) {
    console.log(err)
  };
});

module.exports = router;