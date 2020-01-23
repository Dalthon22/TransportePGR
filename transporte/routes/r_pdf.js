const express = require('express');
const router = express.Router();
const pdfPrinter = require('pdfmake/src/printer');

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
    // CUERPO DEL DOCUMENTO. NO TOCAR. >:V
    var docDefinition = {
      info: {
        //Nombre interno del documento.
        title: 'Hoja de Misión Oficial FOLO-13 ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
      },
      pageSize: 'LETTER',
      footer: {
        text: 'Fecha de impresión: ' + today.getDate() + '/' + month + '/' + today.getFullYear(),
        alignment: 'right', fontSize: '8', color: 'gray', italics: true, margin: [15, 5]
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
        text: 'FORMULARIO CONTROL DE MISIONES OFICIALES',
        alignment: 'center',
        bold: true,
        italics: true,
        fontSize: '16'
      },
      {
        text: 'PARA DÍAS Y HORAS NO HÁBILES',
        alignment: 'center',
        bold: true,
        italics: true,
        fontSize: '16'
      },
      {
        text: 'UNIDAD DE LOGÍSTICA',
        alignment: 'center',
        bold: true,
        italics: true,
        fontSize: '16'
      },
      {
        text: 'PROCURADURÍA GENERAL DE LA REPÚBLICA',
        alignment: 'center',
        bold: true,
        italics: true,
        fontSize: '16'
      },
      {
        text: '\n\nFOLO-13',
        alignment: 'right',
        bold: true,
        italics: true
      },
      {
        text: [{
          text: 'Fecha: ',
          bold: true
        }, '']
      },
      {
        text: [{
          text: '\nUnidad o procuraduría auxiliar: ',
          bold: true
        }, ''],
      },
      {
        text: [{
          text: '\nSe autoriza a: ',
          bold: true
        }, ''],
      },
      {
        text: [{
          text: '\nVehículo placa #: ',
          bold: true
        }, ''],
      },
      {
        text: [{
          text: '\nMisión: ',
          bold: true
        }, ''],
      },
      {
        text: [{
          text: '\nPeríodo de la misión: ',
          bold: true
        }, ''],
      },
      {
        text: '\nAutorizado por: ',
        bold: true,
        preserveLeadingSpaces: true
      },
      {
        text: '\n\n\n\n\n\n___________________________________                 _________________________________________',
        alignment: 'center'
      },
      {
        text: 'Firma y sello de autorizado                                 Nombre y firma del motorista o conductor',
        preserveLeadingSpaces: true,
        alignment: 'center',
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
  }
});

module.exports = router;