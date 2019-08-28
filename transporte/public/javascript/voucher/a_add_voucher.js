//Var para verificar que el formulario esta listo para guardar
var clear = true;
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
                    return true;
                },
                onApprove: function () {
                    animateAddButton();
                    $('.ui.form').form('validate form');
                    if ($('.ui.form').form('is valid')) {
                        $('#voucher_cant').val(parseInt($("#last_voucher").val()) - parseInt($("#first_voucher").val()) + 1);
                        alert("Se ingresaran " + $('#voucher_cant').val());
                        //GET para verificar que el número de vale no haya existido con anterioridad
                        buscar_vale($("#first_voucher").val());
                        buscar_vale($("#last_voucher").val());

                        $('.ui.form').form('validate form');
                        if ($('.ui.form').form('is valid') && clear) {
                            //Para borrar todos los errores
                            $('.ui.toast').remove();
                            agregarVales();

                        }
                        return false;
                    } else {
                        //Si el formulario no es válido
                        noAnimateAddButton()
                        return false;
                    }
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


function buscar_vale(num) {
    const url_request_vale = 'vales/' + num;
    console.log("Ajax buscará en: " + url_request_vale);
    $.ajax({
        url: url_request_vale,
        type: 'GET',
        dataType: 'json',
        success: (data) => {
            //Manejo del resultado enviado por ajax
            if (data.message) {
                clear = false;
                noAnimateAddButton()
                if (num == $("#first_voucher").val()) {
                    console.log("Error en el primero");
                    $('#add_modal')
                        .toast({
                            title: 'Error: número duplicado',
                            class: 'error',
                            showIcon: false,
                            position: 'top right',
                            displayTime: 0,
                            closeIcon: true,
                            message: 'El vale número: ' + num + ' Ya ha sido registrado',
                            /* className: {
                                toast: 'ui message'
                            } */
                        });
                } else {
                    console.log("Error en el segundo");

                    $('#add_modal')
                        .toast({
                            title: 'Error: número duplicado',
                            showIcon: false,
                            class: 'error',
                            position: 'top right',
                            displayTime: 0,
                            closeIcon: true,
                            message: 'El vale número: ' + num + ' Ya ha sido registrado',
                            /* className: {
                                toast: 'ui message'
                            } */
                        });
                }
                /*  var modal = document.getElementById("add_modal");
                 var html_messaje = "<div class=" + '"ui negative message"> <i class="close icon"></i><div class="header">' + data.message + '</div> <p>Intente con otro numero de vale</p></div>';
                 modal.insertAdjacentHTML("beforebegin", html_messaje); */
            } else {
                clear = true;
                console.log("Si ya te oi esta limpio");
            }
        }
    });
}

function animateAddButton() {
    $('.approve.button')
        .api('set loading');
}

function noAnimateAddButton() {
    {
        $('.approve.button')
            .api('remove loading');
    }
}

//Para poder enviar el formulario de agregar vales
function agregarVales() {
    $(this).serializeArray()
    $.ajax({
        type: "POST",
        url: '/vales/add',
        dataType: 'json',
        data: $(".ui.form").serializeArray(),
        success: (data) => {
            successAddToast();
            if (data.type === 1) {
                console.log("Exito we");
                successAddToast();
            } else {
                console.log(data.message);
            }
        },
    });
    //$('#add_btn_hide').trigger("click");
}


/* $('.form .submit.button')
    .api({
        url: '/vales',
        action: 'create voucher',
        serializeForm: true,
        data: {
            foo: 'baz'
        },
        beforeSend: function (settings) {

            // open console to inspect object
            console.log(settings.data);
            return settings;
        },
        onSuccess: function (response, element, xhr) {
            if (response.type === 1) {
                console.log("Exito we");
                successAddToast();
            } else {
                console.log(response.message);
            }
        },
        onComplete: function (response, element, xhr) {
            if (response.type === 1) {
                console.log("Exito we");
                successAddToast();
            } else {
                console.log(response.message);
            }
        }
    }); */

function successAddToast() {
    $('.body')
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