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
    var columns = [{
      text: 'Marca',
      bold: true
    }, {
      text: 'Modelo',
      bold: true
    }, {
      text: 'Color',
      bold: true
    }, {
      text: 'Año',
      bold: true
    }, {
      text: 'Número de motor',
      bold: true
    }, {
      text: 'Número de chasis',
      bold: true
    }, {
      text: 'Kilometraje',
      bold: true
    }, {
      text: 'Número de placa',
      bold: true
    }, {
      text: 'Tipo de vehículo',
      bold: true
    }, {
      text: 'Oficina responsable',
      bold: true
    }];
    var bodyData = [];
    var bodyRow = [];
    bodyData.push(columns);
    // CUERPO DEL DOCUMENTO. NO TOCAR. >:V
    var docDefinition = {
      info: {
        //Nombre interno del documento.
        title: 'Reporte lote de vehículos ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
      },
      pageSize: 'A4',
      pageOrientation: 'landscape',
      footer:
        function (currentPage, pageCount) {
          return [
            {
              text: 'Fecha de generación: ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
              alignment: 'right', fontSize: '9', italics: true, margin: [15, 0]
            },
            {
              text: 'Generado por: ' + token.user.first_name + ' ' + token.user.last_name,
              alignment: 'right', fontSize: '9', italics: true, margin: [15, 0]
            },
            {
              text: 'Página ' + currentPage.toString() + ' de ' + pageCount.toString(),
              alignment: 'right', fontSize: '9', italics: true, margin: [15, 0]
            }
          ];
        },
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
        text: 'Procuraduría General de la República - Unidad de Transporte\n\n\n\n\n',
        alignment: 'center',
        fontSize: '12'
      },
      {
        table: {
          headerRows: 1,
          widths: ['*', '*', '*', '*', '*', '*', '*', '*', '*', '*'],
          body: bodyData,
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