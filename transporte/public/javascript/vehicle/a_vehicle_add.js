//Rutas para ajax
var url_request_plate_exist = 'matricula_';
var url_post_create = 'vehiculos/gestionar';
var url_get_lis = 'vehiculos';
var current_plate;


/*Validacion del lado del cliente */
$(function () {
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
                        type: 'empty',
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
});

$(".close.icon").click(function () {
    $(this).parent().hide();
});

$("#add_btn").click(function () {
    //successAddToast();
    //AddToast('Error con la Matricula', 'warning', 'Matricula ya existe');
    insert_vehicle();
});

//Inicializa el proceso de insercion con su respectivas validaciones
function insert_vehicle() {
    $('.ui.toast').remove();
    $('.ui.form').form('validate form');
    if ($('.ui.form').form('is valid')) {
        url_request_plate_exist += $('#vplate').val();
        $.ajax({
            url: url_request_plate_exist,
            async: false,
            type: 'GET',
            dataType: 'json',
            success: (data) => {
                if (data.type === 0) {
                    create_vehicle();
                } else {
                    AddToast('Error con la Matricula', 'warning', data.message);
                }
            }
        });
    }
}

//Metodo Post de insercion.
function create_vehicle() {
    $.ajax({
        url: url_post_create,
        async: false,
        type: 'POST',
        dataType: 'json',
        data: $('.ui.form').serializeArray(),
        success: (data) => {
            if (data.type === 0) {
                $.ajax({
                    url: url_get_lis,
                    async: false,
                    type: 'GET',
                    dataType: 'json',
                    data: data.serializeArray()
                });
            } else {
                AddToast(data.title, 'error', data.message);
            }
        }
    });

    successAddToast();
}

function successAddToast() {
    $('body')
        .toast({
            title: 'Guarado exitoso',
            showIcon: true,
            class: 'success',
            position: 'top right',
            displayTime: 3000,
            closeIcon: true,
            message: 'Vehículo registrado',
            transition: {
                showMethod: 'zoom',
                showDuration: 100,
                hideMethod: 'fade',
                hideDuration: 500
            }
        });
}

function AddToast(_title, _class, _message) {
    $('body')
        .toast({
            title: _title,
            showIcon: true,
            class: _class,
            position: 'top right',
            displayTime: 0,
            closeIcon: true,
            message: _message,
            transition: {
                showMethod: 'zoom',
                showDuration: 100,
                hideMethod: 'fade',
                hideDuration: 500
            }
        });
}