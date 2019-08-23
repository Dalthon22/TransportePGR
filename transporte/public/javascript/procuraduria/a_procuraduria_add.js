$(function () {
    $('#addProcu').form({
        inline: true,
        on: 'change',
        fields: {
            name: {
                identifier: 'name',
                rules: [{
                    type: 'empty',
                    prompt: 'Ingrese el nombre de la procuraduría.'
                }, {
                    type: 'maxLength[250]',
                    prompt: 'Longitud máxima del nombre: 250 caracteres'
                },
            ]
            },
            detail: {
                identifier: 'detail',
                rules: [{
                    type: 'empty',
                    prompt: 'Ingrese un detalle de dirección.'
                }, {
                    type: 'maxLength[250]',
                    prompt: 'Longitud máxima del detalle: 200 caracteres.'
                }]
            },
            departamento: {
                identifier: 'departamento',
                rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un departamento.'
                }]
            },
            municipio: {
                identifier: 'municipio',
                rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un municipio.'
                }]
            },
        }
    })
});

$(document).ready(function () {
    $('#message').fadeIn('slow', function () {
        $('#message').delay(5000).fadeOut();
    });
});
$(".close.icon").click(function () {
    $(this).parent().hide();
});