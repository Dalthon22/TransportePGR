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
   /*  var texto = [[['Mi casa'], ['Colonia El Rosal 1, Block "C", Pasaje #2, Casa #3'], ['La Libertad'], ['Quezaltepeque']],
  [['Nombre 1'], ['Detalle 1'], ['Departamento 1'], ['Municipio 1']]]; */
    var bodyData = [];
    var columns = [{ text: 'Nombre del destino', bold: true }, { text: 'Detalle de dirección', bold: true
   }, { text: 'Departamento', bold: true }, { text: 'Municipio', bold: true }];
    var data = [{nombre: 'Nombre 1', detalle: 'Detalle 1', departamento: 'Departamento 1', municipio: 'Municipio 1'},
                {nombre: 'Nombre 2', detalle: 'Detalle 2', departamento: 'Departamento 2', municipio: 'Municipio 2'}];
    bodyData.push(columns);
    data.forEach(row => {
      var dataRow = [];
      dataRow.push(row.nombre);
      dataRow.push(row.detalle);
      dataRow.push(row.departamento);
      dataRow.push(row.municipio);
      bodyData.push(dataRow);
    });
    var docDefinition = {
      pageSize: 'LETTER',
      content: [
        {
          table: {
            headerRows: 1,
            widths: ['auto', 'auto', 'auto', 'auto'],
            body: bodyData,
          },
        },
      ],
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