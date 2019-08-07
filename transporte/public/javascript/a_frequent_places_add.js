$(function () {
    $('#frm-prueba').form({
        inline: true,
        on: 'change',
        fields: {
            name: {
                identifier: 'name',
                rules: [{
                    type: 'empty',
                    prompt: 'Ingrese un nombre para la Dirección'
                }, {
                    type: 'maxLength[100]',
                    prompt: 'Longitud Maxima de nombre 100 caracteres'
                }, {
                    type: 'Alphanumeric',
                    prompt: 'El campo nombre solo acepta caracteres alfanumericos.'
                }]
            },
            detail: {
                identifier: 'detail',
                rules: [{
                    type: 'empty',
                    prompt: 'Ingrese un Detalle de Direccion.'
                }, {
                    type: 'maxLength[150]',
                    prompt: 'Longitud Maxima del detalle 150 caracteres'
                }]
            },
            departamento: {
                identifier: 'departamento',
                rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un Departamento'
                }]
            },
            municipio: {
                identifier: 'municipio',
                rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un Municipio'
                }]
            },
        }
    })
});