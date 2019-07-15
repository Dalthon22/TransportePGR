/*Validacion del lado del cliente */
$(function () {
    //Validacion de formulario
    $('.ui.form')
        .form({
            inline: true,
            on: 'blur',
            fields: {
                brand: {
                    identifier: 'brand',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese la marca del vehículo'
                    }]
                },
                chassis: {
                    identifier: 'chassis',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese información del chasis'
                    }]
                },
                state: {
                    identifier: 'state',
                    rules: [{
                        type: 'checked',
                        prompt: 'Debe seleccionar el estado del vehículo'
                    }]
                },
                model: {
                    identifier: 'model',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el modelo'
                    }]
                },
                engine: {
                    identifier: 'engine',
                    rules: [{
                            type: 'empty',
                            prompt: 'Por favor ingrese número del motor'
                        },
                        {
                            type: 'minLength[10]',
                            prompt: 'La información del motor debe contener al menos caracteres 10'
                        }
                    ]
                },
                plate: {
                    identifier: 'plate',
                    rules: [{
                            type: 'empty',
                            prompt: 'Por favor ingrese el número de placa'
                        },
                        {
                            type: 'minLength[4]',
                            prompt: 'El numero de placa puede poseer menos de 4 caracteres'
                        },
                        {
                            type: 'maxLength[8]',
                            prompt: 'El numero de placa no puede poseer más de 8 caracteres'
                        },
                        {
                            type: 'regExp[/^[A-Z]{1,2}[0-9]{4,6}$/]',
                            prompt: 'El número de placa debe tener este este formato: AA999999'
                        }
                    ]
                },
                seats: {
                    identifier: 'seats',
                    rules: [{
                        type: 'integer[2..40]',
                        prompt: 'Le número de asientos del vehículo debe ser entre 2 y 40'
                    }]
                }
            }
        });

    //Setea el radio button de la opcion funcional como chequeado
    $('#Funcional').attr("checked", "checked");

    //Muestra Mensaje de confirmacion  cuando se desea ingesar un nuevo registro
    $('#nuevo').on('click', () => {
        $('.ui.basic.modal')
            .modal({
                closable: true,
                onDeny: function () {
                    return true;
                },
                onApprove: function () {
                    $('#add_get').prop('action', '/vehiculos/add');
                }
            })
            .modal('show');
    });

    //Verifica que elemento de la tabla fue seleccionado con un click
    /* $('.ui.table').click(function (event) {
        var text = $(event.target).text();
        window.alert(text);
    });*/

    $('#listado_vehiculos').find('tr').click(function () {
        //alert('You clicked row ' + ($(this).index() + 1));
        alert('El contenido de la celda' + ($(this).find('td:eq(1)').html()));
        var valor = ($(this).find('td:eq(1)').html());
        $('#plate_form').val() = valor;

    });
});