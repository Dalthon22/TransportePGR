const express = require('express');
const router = express.Router();
const pdfPrinter = require('pdfmake/src/printer'); //Copiar esto

router.get('/', (req, res) => {
  //Copiar desde aquí
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
    const texto = "Texto de prueba."
    var docDefinition = {
      pageSize: 'LETTER',
      content: [
        {
          image: 'public/images/logopgr1.png',
          fit: [60,60],
          absolutePosition: { x: 70, y: 20 }
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
        {//Aquí ponés la fecha que recuperaste del req.body
          text: 'Fecha de solicitud:', //text: 'Fecha de solicitud:' + variable,
        },
        { //Aquí sería "Fecha de salida:"+ variable +                             "Hora de salida:" + otraVariable
        //respetando los espacios que hay
          text: '\nFecha de salida:                               Hora de salida:                           Hora de regreso:        ',
          preserveLeadingSpaces: true
        },
        {//Y así sucesivamente para todos los demás. Más abajo podés ver un ejemplo en uso
          text: '\nMotorista:                                        Cantidad de pasajeros:',
          preserveLeadingSpaces: true
        },
        {
          text: '\nUnidad solicitante:'
        },
        {
          text: '\nLugar: '
        },
        {
          text: '\nMisión: '
        },
        { //Este es el ejemplo
          text: '\nObservación: '+ texto
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

    doc.on('end', () => {
      result = Buffer.concat(chunks);
      res.setHeader('content-type', 'application/pdf');
      res.send(result);
    });

    doc.end();
  } catch (err) {
    console.log(err)
  } //Hasta aquí
});

module.exports = router;