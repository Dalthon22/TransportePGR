/*
Animaciones del Front del formulario de ingresar vehiculo 
20092019_DD
*/

//Rutas para ajax
var url_request_plate_exist;
var url_post_create = '/vehiculos/gestionar';
var url_get_lis = 'vehiculos';
var current_plate;
var data_type;


/*
Validacion del formulario del lado del cliente 
20092019_DD
*/
$(function () {
    $('.ui.form')
        .form({
            inline: true,
            on: 'blur',
            fields: {
                code: {
                    identifier: 'code',
                    rules: [{
                            type: 'empty',
                            prompt: 'Por favor ingrese el número del activo fijo'
                        },
                        {
                            type: 'minLength[10]',
                            prompt: 'El numero del activo fijo no puede poseer menos de 10 caracteres'
                        },
                        {
                            type: 'maxLength[21]',
                            prompt: 'El numero de activo fijo no puede poseer más de 21 caracteres'
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
                            type: 'maxLength[7]',
                            prompt: 'El numero de placa no puede poseer más de 7 caracteres'
                        },
                        {
                            type: 'regExp',
                            value: /([N]{1})(\d{3,6})/i,
                            prompt: 'El número de placa debe tener este este formato: N###(###)'
                        }
                    ]
                },
                chassis: {
                    identifier: 'chassis',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese información del chasis'
                    }, {
                        type: 'regExp',
                        value: /([A-Za-z0-9]{17})/i,
                        prompt: 'Ingrese valor alfanumérico de 17 caracteres'
                    }, {
                        type: 'minLength[17]',
                        prompt: 'El valor debe contener mínimo 17 caracteres'
                    }, {
                        type: 'maxLength[17]',
                        prompt: 'El valor debe contener máximo 17 caracteres'
                    }]
                },
                engine: {
                    identifier: 'engine',
                    rules: [{
                            type: 'empty',
                            prompt: 'Por favor ingrese número del motor'
                        },
                        {
                            type: 'regExp',
                            value: /([A-Za-z0-9]{10})/i,
                            prompt: 'Ingrese valor alfanumérico de 10 caracteres'
                        },
                        {
                            type: 'minLength[10]',
                            prompt: 'La información del motor debe contener al menos caracteres 10'
                        }
                    ]
                },
                vin: {
                    identifier: 'vin',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese información del número VIN'
                    }, {
                        type: 'regExp',
                        value: /([A-Za-z0-9]{17})/i,
                        prompt: 'Ingrese valor alfanumérico de 17 caracteres'
                    }, {
                        type: 'minLength[17]',
                        prompt: 'El valor debe contener mínimo 17 caracteres'
                    }, {
                        type: 'maxLength[17]',
                        prompt: 'El valor debe contener máximo 17 caracteres'
                    }]
                },
                brand: {
                    identifier: 'brand',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese la marca del vehículo'
                    }]
                },
                model: {
                    identifier: 'model',
                    rules: [{
                            type: 'empty',
                            prompt: 'Por favor ingrese el modelo'
                        },
                        {
                            type: 'regExp',
                            value: /([A-Za-z]+)/gi, //Obligar a que contenga al menos una letra
                            prompt: 'El nombre del modelo debe contener al menos una letra'
                        },
                        {
                            type: 'minLength[2]',
                            prompt: 'Debe contener al menos dos caracteres'
                        },

                    ]
                },
                type: {
                    identifier: 'type',
                    rules: [{
                        type: 'empty',
                        prompt: 'Debe seleccionar el tipo de vehículo'
                    }]
                },
                year: {
                    identifier: 'year',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el modelo'
                    }]
                },
                state: {
                    identifier: 'state',
                    rules: [{
                        type: 'empty',
                        prompt: 'Debe seleccionar el estado del vehículo'
                    }]
                },
                seats: {
                    identifier: 'seats',
                    rules: [{
                        type: 'integer[2..40]',
                        prompt: 'La capacidad de personas debe estar entre 2 y 40'
                    }]
                },
                office: {
                    identifier: 'office',
                    rules: [{
                        type: 'empty',
                        prompt: 'Debe seleccionar la oficina responsable del vehiculo del vehículo'
                    }]
                },
            }
        });

    if (!$('#vehicle_id').val()) {
        $('#add_btn').addClass('disabled');
    }

    current_plate = $('#vplate').val();
});

$('#year')
    .calendar({
        type: 'year'
    });

/*
Impide el ingreso de cualquier caracter que no se numero
06012019_DD
 */
$("#seats").keydown(function (event) {
    return event.keyCode === 9 || event.keyCode === 8 || event.keyCode === 46 || event.keyCode >= 37 && event.keyCode <= 40 ? true : !isNaN(Number(event.key));
})

/*Limita el ingreso de caracteres a la letra N y numeros
13012020_DD*/
$("#vplate").keydown(function (event) {
    return event.keyCode === 9 || event.keyCode === 8 || event.keyCode === 46 || event.keyCode === 78 || event.keyCode >= 37 && event.keyCode <= 40 ? true : !isNaN(Number(event.key));
})

/*
Impide el ingreso de cualquier caracter que no se letra del alfabeto
BackSpace, Suprimir o flechas direccionales
06012019_DD
 */
$("#brand").keydown(function (event) {
    return event.keyCode === 9 || event.keyCode === 8 || event.keyCode === 46 || event.keyCode >= 37 && event.keyCode <= 40 || event.keyCode >= 65 && event.keyCode <= 90 ? true : false;
})

/*
Impide el ingreso de la letra i,o,q,ñ
06012019_DD
 */
$("#chassis").keydown(function (event) {
    return event.keyCode === 73 || event.keyCode === 79 || event.keyCode === 81 || event.keyCode === 192 ||
        !((event.keyCode === 8 || event.keyCode === 46 || event.keyCode === 9) ||
            (event.keyCode >= 64 && event.keyCode <= 90) ||
            (event.keyCode >= 37 && event.keyCode <= 40) ||
            !isNaN(Number(event.key))) ? false : true;
})

/*
Impide el ingreso de la letra ñ y caracteres especiales
06012019_DD
 */
$("#engine").keydown(function (event) {
    return event.keyCode === 192 ||
        !((event.keyCode === 8 || event.keyCode === 46 || event.keyCode === 9) ||
            (event.keyCode >= 64 && event.keyCode <= 90) ||
            (event.keyCode >= 37 && event.keyCode <= 40) ||
            !isNaN(Number(event.key))) ? false : true;
})

/*
Impide el ingreso de la letra ñ y caracteres especiales
06012019_DD
 */
$("#model").keydown(function (event) {
    return event.keyCode === 192 ||
        !((event.keyCode === 8 || event.keyCode === 46 || event.keyCode === 9) ||
            (event.keyCode >= 64 && event.keyCode <= 90) ||
            (event.keyCode >= 37 && event.keyCode <= 40) ||
            !isNaN(Number(event.key))) ? false : true;
})

/*
Permite cerrar los mensajes emergentes
29092019_DD
 */
$(".close.icon").click(function () {
    $(this).parent().hide();
});

/*
Detona el proceso de insercion del vehiculo
28092019_DD 
*/
$("#add_btn").click(function () {
    if ($('#vehicle_id').val()) {
        update_vehicle();
    } else {
        insert_vehicle();
    }

});

/*
 Valida que la placa no esté vinculada a ningun otro vehiculo
 01102019_DD
*/
$('#fPlate').focusout(function () {
    console.dir($(".ui.form").form('validate field', 'plate'));
    if ($(".ui.form").form('validate field', 'plate')) {
        if (current_plate === $('#vplate').val() && $('#vehicle_id').val()) {
            $('#add_btn').removeClass('disabled');
            AddToast("Valor Integro", "orange", "El numero de placa: " + current_plate + " no ha cambiado");
        } else if (!$('#vplate').val()) {
            $('#fPlate').addClass('error');
            AddToast("Valor Nulo", "error", "Debe ingresar un matricula valida para poder verificar su unicidad");
        } else {
            if ($('#vplate').val().length >= 4) {
                console.log($('#vplate').val().length)
                validate_plate();
            }
        }
    }
})

/*
Logica del proceso de insercion con su respectivas validaciones
28092019_DD
*/
function insert_vehicle() {
    $('.ui.toast').remove();
    $('.ui.form').form('validate form');
    if ($('.ui.form').form('is valid')) {
        url_request_plate_exist = 'matricula_' + $('#vplate').val();
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
                    $('#add_btn').addClass('disabled');
                }
            }
        });
    }
}

/*
Logica del proceso de insercion con su respectivas validaciones
01102019_DD
*/
function update_vehicle() {
    $('.ui.toast').remove();
    $('.ui.form').form('validate form');
    if ($('.ui.form').form('is valid')) {
        if (current_plate === $('#vplate').val()) {
            refresh_vehicle();
        } else {
            validate_plate();
            if (data_type === 0) {
                refresh_vehicle();
            }
        }
    }
}


/*
Verifica si el numero de placa existe
01102019_DD
*/
function validate_plate() {
    url_request_plate_exist = 'matricula_' + $('#vplate').val();
    $.ajax({
        url: url_request_plate_exist,
        async: false,
        type: 'GET',
        dataType: 'json',
        success: (data) => {
            data_type = data.type;
            if (data.type === 0) {
                AddToast('Matrícula valida', 'success', data.message);
                $('#add_btn').removeClass('disabled');
            } else {
                AddToast('Error con la Matricula', 'warning', data.message);
                $('#add_btn').addClass('disabled');
                $('#fPlate').addClass('error');
            }
        }
    });
}

/*
Metodo Ajax de insercion de vehiculo
28092019_DD 
*/
function create_vehicle() {
    $.ajax({
        url: "/vehiculos/gestionar",
        async: true,
        type: 'POST',
        dataType: 'json',
        data: $('.ui.form').serializeArray(),
        success: (data) => {
            if (data.redirect) {
                window.location.href = data.redirect;
            } else {
                if (data.errors) {
                    for (var error of data.errors) {
                        AddToast(data.title, 'error', error.msg);
                    }
                } else {
                    AddToast(data.title, 'error', data.message);
                }
            }
        }
    });
}

/*
Metodo Ajax de actualizacion de vehiculo
28092019_DD 
*/
function refresh_vehicle() {
    $.ajax({
        url: "/vehiculos/gestionar",
        async: true,
        type: 'POST',
        dataType: 'json',
        data: $('.ui.form').serializeArray(),
        success: (data) => {
            if (data.redirect) {
                window.location.href = data.redirect;
            } else {
                if (data.errors) {
                    for (var error of data.errors) {
                        AddToast(data.title, 'error', error.msg);
                    }
                } else {
                    AddToast(data.title, 'error', data.message);
                }
            }
        }
    });
}

/*
Funcion que muestra un mensaje a lado superior derecho
27092019_DD 
*/
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