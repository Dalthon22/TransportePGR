//Var para verificar que el formulario esta listo para guardar
var unique_num1, unique_num2;
//HABILITA EL INPUT DEL ULTIMO VALE 
$("#first_voucher").change(function () {
    if ($("#first_voucher").val() != "") {
        $("#last_voucher").prop('disabled', false);
    } else {
        $("#last_voucher").prop('disabled', true);
        $("#last_voucher").val("");
    }
});

//REVALIDA EL CAMPO DEL ULTIMO VALE
document.getElementById("add_btn")
    .addEventListener("click", function () {
        $(".ui.form").form('validate field', 'last_voucher');
    });

//AGREGA REGLA PARA VERIFICAR QUE EL ULTIMO VALE SEA MAYOR QUE EL PRIMERO
$.fn.form.settings.rules.minor = function (value, minor) {
    var valido = true;
    if (parseInt($("#last_voucher").val()) <= parseInt($("#first_voucher").val())) {
        valido = false;
    }
    return (valido)
};
//VALIDACION FORMULARIO
$(function () {
    $('.ui.form').form({
        on: 'blur',
        inline: true,
        fields: {
            date_entry_bill: {
                identifier: 'date_entry_bill',
                rules: [{
                    type: 'empty',
                    prompt: 'Por favor seleccione la fecha de facturación'
                }]
            },
            provider: {
                identifier: 'provider',
                rules: [{
                    type: 'empty',
                    prompt: 'Por favor ingrese el nombre del proveedor'
                }]
            },
            price: {
                identifier: 'nominal_value',
                rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el valor nominal de cada vale'
                    },
                    {
                        type: 'decimal',
                        prompt: 'El campo solo acepta números decimales'
                    }
                ]
            },
            bill_num: {
                identifier: 'bill_num',
                rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese un número de factura'
                    },
                    {
                        type: 'integer[0...1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000]',
                        prompt: 'Por favor ingrese un número valido'
                    } //
                ]
            },
            first_voucher: {
                identifier: 'first_voucher',
                rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el número del primer vale en el paquete'
                    },
                    {
                        type: 'integer[0...1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000]',
                        prompt: 'Por favor ingrese un numero valido'
                    }
                ]
            },
            last_voucher: {
                identifier: 'last_voucher',
                rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el número del último vale en el paquete'
                    },
                    {
                        type: 'integer[0...1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000]',
                        prompt: 'Por favor ingrese un número valido'
                    },
                    {
                        type: 'minor[first_voucher]',
                        prompt: 'El último vale deber ser mayor que el primero'
                    }
                ]
            },
        },
    });
});

//Control del Modal para agregar vales
$(function () {
    $("#show_add_form_btn").click(function () {
        $('#add_modal').modal('show');
        $('.ui.form').form('reset');
        $('#add_modal')
            .modal({
                closable: false,
                onDeny: function () {
                    $('.ui.form').form('reset');
                    $('.ui.toast').remove();
                    noAnimateAddButton();
                    $('.ui.form').form('reset');
                    return true;
                },
                onApprove: function () {
                    //buscar_vale($("#first_voucher").val(), $("#last_voucher").val());
                    ingresar_vales();
                    return false;
                }
            })
            .modal('show');
        var today = new Date();

        //Da formato e inicializa el calendario
        $('#standard_calendar').calendar({
            //yearFirst: true,
            type: 'date',
            //minDate: new Date(today.getFullYear(), today.getMonth(), today.getDate()),
            onHide: function () {
                $(".ui.form").form('validate field', 'date_entry_bill');
            },
            formatter: {
                date: function (date, settings) {
                    if (!date) return '';
                    var day = date.getDate();
                    var month = date.getMonth() + 1;
                    var year = date.getFullYear();
                    //return (year + '-' + ('0' + month).slice(-2) + '-' + ('0' + day).slice(-2));
                    return (('0' + day).slice(-2) + '/' + ('0' + month).slice(-2) + '/' + year);
                }
            },
            text: {
                days: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
                months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            }
        });
    });
});

//Se detona en el método approve del modal
function ingresar_vales() {
    //unique_num = true;
    animateAddButton();
    $('.ui.toast').remove();
    $('.ui.form').form('validate form');
    if ($('.ui.form').form('is valid')) {
        $('#voucher_cant').val(parseInt($("#last_voucher").val()) - parseInt($("#first_voucher").val()) + 1);
        alert("Se ingresaran " + $('#voucher_cant').val());
        //GET para verificar que el número de vale no haya existido con anterioridad
        buscar_vale($("#first_voucher").val(), $("#last_voucher").val());
        // $('.ui.form').form('validate form');
        console.log("Valor de regla de valor unico1: " + unique_num1 + " Y unico 2: " + unique_num2);
        if ($('.ui.form').form('is valid') && unique_num1 && unique_num2) {
            //Para borrar todos los errores
            $('.ui.toast').remove();
            agregarVales();
        }
    } else {
        //Si el formulario no es válido
        noAnimateAddButton()
    }
}
///Verifica que los vales que se vayan a ingresar no hayan sido previamente registrados
function buscar_vale(num1, num2) {
    var err1, err2;
    const url_request_vale = 'vales/' + num1;
    console.log("Ajax buscará en: " + url_request_vale);
    const url_request_vale2 = 'vales/' + num2;
    console.log("Ajax buscará en: " + url_request_vale2);

    $.ajax({
        url: url_request_vale,
        async: false,
        type: 'GET',
        dataType: 'json',
        success: (data) => {
            //Manejo del resultado enviado por ajax
            console.log("DATA DEL GET NUM VALE 1" + data.type)
            if (data.type === 1) {
                noAnimateAddButton();
                //errorUnique1(false);
                unique_num1 = false;
                console.log("Error en el primero" + "Unique1");
                $('#add_modal')
                    .toast({
                        title: 'Error: número duplicado',
                        class: 'error',
                        showIcon: false,
                        position: 'top right',
                        displayTime: 0,
                        closeIcon: true,
                        message: data.message,
                    });
                return false;
            } else {
                unique_num1 = true;

                //unique_num1 = true;
                //errorUnique1(true);
                console.log("Si ya te oi el primero esta limpio");
            }
        }
    });
    $.ajax({
        url: url_request_vale2,
        type: 'GET',
        dataType: 'json',
        async: false,
    }).done(function (data) {
        if (data.type === 1) {
            noAnimateAddButton();
            unique_num2 = false;
            console.log("Error en el segundo" + "Unique2" + unique_num2);
            //unique_num2 = false;
            //errorUnique2(false);
            $('#add_modal')
                .toast({
                    title: 'Error: número duplicado',
                    showIcon: false,
                    class: 'error',
                    position: 'top right',
                    displayTime: 0,
                    closeIcon: true,
                    message: data.message,
                });
        } else {

            unique_num2 = true;

            //unique_num2 = true;
            console.log("Si ya te oi el ultimo esta limpio");
        }
    })
}

function agregarVales() {
    $(this).serializeArray()
    $.ajax({
        type: "POST",
        url: '/vales/add',
        dataType: 'json',
        data: $(".ui.form").serializeArray(),
        success: (data) => {
            console.log("data.type es:" + typeof (data.type));
            if (data.type == 1) {
                //Si hay error
                console.log(data.message);
                console.log("Ocurrio un Error en el ingreso de los vales");
                $('#add_modal')
                    .toast({
                        title: data.title,
                        showIcon: false,
                        class: 'error',
                        position: 'top right',
                        displayTime: 0,
                        closeIcon: true,
                        message: data.message,
                    });
                noAnimateAddButton();
            } else {
                //Si se ingreso con exito
                console.log("Exito we");
                noAnimateAddButton();
                $('#add_modal').modal("hide");
                successAddToast();
            }
        },
    });
    //$('#add_btn_hide').trigger("click");
}

function animateAddButton() {
    $('.approve.button').api('set loading');

    /*     $('.ui.modal').api('set loading');
     */
}

function noAnimateAddButton() {
    {
        $('.approve.button')
            .api('remove loading');
        /* $('.ui.modal')
            .api('remove loading'); */
    }
}

function errorUnique1(value) {
    unique_num1 = value;
    console.log("Me dicen que le pase: " + value + " a unique 1");
    console.log("A unique1 le mando" + unique_num1);
}

function errorUnique2(value) {
    unique_num2 = value;
    console.log("Me dicen que le pase: " + value + " a unique 2");
    console.log("A unique2 le mando" + unique_num2);
}
//Para poder enviar el formulario de agregar vales


function successAddToast() {
    $('body')
        .toast({
            //title: 'Error: número duplicado',
            showIcon: true,
            class: 'success',
            position: 'top right',
            displayTime: 2000,
            closeIcon: true,
            message: 'Vales registrados con exito',
            /* className: {
                toast: 'ui message'
            } */
            transition: {
                showMethod: 'zoom',
                showDuration: 100,
                hideMethod: 'fade',
                hideDuration: 500
            }
        });
}