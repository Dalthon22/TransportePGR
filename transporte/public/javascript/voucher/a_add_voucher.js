moment.locale("Es-SV");
//Var para verificar que el formulario esta listo para guardar
var unique_num1, unique_num2, data, tab;

//HABILITA EL INPUT DEL ULTIMO VALE 
$("#first_voucher").change(function () {
    if ($("#first_voucher").val() != "") {
        $("#last_voucher").prop('disabled', false);
    } else {
        $("#last_voucher").prop('disabled', true);
        $("#last_voucher").val("");
    }
});

//Calcula el numero de vales a ingresar
$("#last_voucher").change(function () {
    if ($("#last_voucher").val() != "" && $(".ui.form").form('validate field[date_entry_bill]')) {
        $("#NumVoucher").text("Se ingresaran: " + calculateNumVoucher() + " vales.");
        $("#NumVoucher").removeClass("hidden");
    } else {
        $("#NumVoucher").addClass("hidden");
    }
});

function calculateNumVoucher() {
    return parseInt($("#last_voucher").val()) - parseInt($("#first_voucher").val()) + 1
}

//Serializa la tabla
$(document).ready(function () {
    fillTable();
});

//llenar tabla
function fillTable() {
    var month = moment().get('month');
    month = moment().month(month).format("MMMM")
    //Llenar el data table
    /* tab = $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
        ajax: {
            url: '/vales/list',
            type: 'GET',
        },
        "columns": [{
                "data": "num_voucher"
            },
            {
                "data": "price"
            },
            {
                "data": "condition"
            },
            {
                "data": "voucher_provider"
            },
            {
                "data": "num_entry_bill"
            },
            {
                "data": "date_entry_bill"
            },
            {
                "data": "num_close_bill"
            }, {
                "data": "date_close_bill"
            }
        ]
    }); */
    tab = $('#mytable1').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
        ajax: {
            url: '/vales/bills',
            type: 'GET',
        },
        "columns": [{
                "data": "num_bill"
            },
            {
                "data": "date_entry"
            },
            {
                "data": "provider"
            },
            {
                "data": "cant_voucher"
            },
            {
                "data": "total"
            },
            {
                "data": "created_at"
            }
        ],
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json",
            "emptyTable": "No hay facturas disponibles para el mes de " + month
        },
        "columnDefs": [{
            className: "dt-body-right",
            "targets": [3, 4],

        }]
    });
}
//REVALIDA EL CAMPO DEL ULTIMO VALE
document.getElementById("add_btn")
    .addEventListener("click", function () {
        $(".ui.form").form('validate field', 'last_voucher');
    });

//AGREGA REGLA PARA VERIFICAR QUE EL ULTIMO VALE SEA MAYOR QUE EL PRIMERO
$.fn.form.settings.rules.minor = function (value, minor) {
    try {
        var valido = true;
        if (parseInt($("#last_voucher").val()) <= parseInt($("#first_voucher").val())) {
            valido = false;
        }
        return (valido);
    } catch (err) {
        console.log(err);
    }
};
//VALIDACION FORMULARIO
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
        bill_month: {
            identifier: 'bill_month',
            rules: [{
                type: 'empty',
                prompt: 'Por favor seleccione el mes a abastecer'
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
//Control del Modal para agregar vales
$('#add_modal')
    .modal({
        closable: false,
        onDeny: function () {
            // $('.ui.form').form('reset');
            $('.ui.toast').remove();
            noAnimateAddButton();
            $('#add_voucher_form').form('clean');
            $('#add_voucher_form').form('reset');
            return true;
        },
        onApprove: function () {
            console.log("aprobad y el form es: " + $('#add_voucher_form').form('is valid'));
            animateAddButton();
            console.log("los campos so los siguientes: " + $('.field'))
            //buscar_vale($("#first_voucher").val(), $("#last_voucher").val());
            ingresar_vales();
            return false;
        }
    }).modal('attach events', '#show_add_form_btn', 'show');

$('#standard_calendar').calendar({
    //yearFirst: true,
    type: 'date',
    //minDate: new Date(today.getFullYear(), today.getMonth(), today.getDate()),
    onHide: function () {
        ///$(".ui.form").form('validate field[date_entry_bill]');
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

$('#month_calendar')
    .calendar({
        type: 'month',
        text: {
            months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
        }
    });



/* $(function () {
    $("#show_add_form_btn").click(function () {
        //$('.segment').dimmer('set disabled');
        //$('#add_modal').modal('show');
        $('.ui.form').form('reset');
        $('#add_modal')
            .modal({
                closable: false,
                onDeny: function () {
                    // $('.ui.form').form('reset');
                    $('.ui.toast').remove();
                    noAnimateAddButton();
                    $('.ui.form').form('clean');
                    return true;
                },
                onApprove: function () {
                    animateAddButton();
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
                ///$(".ui.form").form('validate field[date_entry_bill]');
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
}); */

//Se detona en el método approve del modal
function ingresar_vales() {
    //unique_num = true;
    //animateAddButton();
    $('.ui.toast').remove();
    $('#add_voucher_form').form('validate form');
    if ($('#add_voucher_form').form('is valid')) {
        $('#voucher_cant').val(parseInt($("#last_voucher").val()) - parseInt($("#first_voucher").val()) + 1);
        //alert("Se ingresaran " + $('#voucher_cant').val());
        //GET para verificar que el número de vale no haya existido con anterioridad
        buscar_vale($("#first_voucher").val(), $("#last_voucher").val());
        // $('.ui.form').form('validate form');
        console.log("Valor de regla de valor unico1: " + unique_num1 + " Y unico 2: " + unique_num2);
        if ($('#add_voucher_form').form('is valid') && unique_num1 && unique_num2) {
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
    const url_request_vale = '/vales/num';
    console.log("Ajax buscará en: " + url_request_vale);
    var num_bill = $('#bill_num').val();
    console.log("vales que buscará" + num1 + num2 + "factura" + num_bill);
    var jsonReq = {
        num_voucher: JSON.stringify(num1),
        num_bill: JSON.stringify(num_bill)
    }
    console.dir(jsonReq);
    $.ajax({
        url: url_request_vale,
        async: false,
        type: 'GET',
        dataType: 'json',
        data: jsonReq,
        success: (data) => {
            //Manejo del resultado enviado por ajax
            console.log("DATA DEL GET NUM VALE 1" + data.type)
            if (data.type === 1) {
                noAnimateAddButton();
                unique_num1 = false;
                console.log("Error en el primero" + "Unique1");
                //Muestra el mensaje de error en el primer vale
                $('#add_modal')
                    .toast({
                        title: data.title,
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
                console.log("Si ya te oi el primero esta limpio");
            }
        }
    });
    var jsonReq1 = {
        num_voucher: JSON.stringify(num2),
        num_bill: JSON.stringify(num_bill)
    }
    $.ajax({
        url: url_request_vale,
        type: 'GET',
        dataType: 'json',
        async: false,
        data: jsonReq1,
    }).done(function (data) {
        if (data.type === 1) {
            noAnimateAddButton();
            unique_num2 = false;
            console.log("Error en el último" + "Unique2" + unique_num2);
            //Muestra el mensaje de error en ultimo vale
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
        } else {
            unique_num2 = true;
            console.log("Si ya te oi el ultimo esta limpio");
        }
    })
}
//Manda al controller los datos que seran almaceados en la BD
function agregarVales() {
    $(this).serializeArray()
    $.ajax({
        type: "POST",
        async: true,
        url: '/vales/add',
        dataType: 'json',
        data: $(".ui.form").serializeArray(),
        success: (data) => {
            console.log("data.type es:" + typeof (data.type) + " y trae: " + data.type);
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
                $('#add_modal')
                    .toast({
                        title: data.title,
                        showIcon: false,
                        class: 'error',
                        position: 'top right',
                        displayTime: 0,
                        closeIcon: true,
                        message: data.message1,
                    });
                noAnimateAddButton();
            } else {
                //Si se ingreso con exito
                console.log("Exito we");
                noAnimateAddButton();
                $('#add_modal').modal("hide");
                successAddToast();
                tab.ajax.reload();
                $('#add_voucher_form').form('clean');
                $('#add_voucher_form').form('reset');
                $("#NumVoucher").addClass("hidden");
            }
        },
    });
}

//Para poder animar los elementos cuando se envía un ingreso de vales
function animateAddButton() {
    $('.approve.button').api('set loading');
    showDimmer();
}

function noAnimateAddButton() {
    {
        $('.approve.button')
            .api('remove loading');
        //$('.segment').dimmer('set disabled');
        $('.segment').dimmer('hide');
        //enable_elements();
    }
}

function successAddToast() {
    $('.segment').dimmer('hide');
    // $('.segment').dimmer('set disabled');

    $('body')
        .toast({
            //title: 'Error: número duplicado',
            showIcon: true,
            class: 'success',
            position: 'top right',
            displayTime: 4000,
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

function showDimmer() {
    // $('.segment').dimmer('set active');
    $('.segment').dimmer({
        displayLoader: true,
        loaderVariation: 'slow blue medium elastic',
        loaderText: "Agregando Vales...",
        closable: false,
    }).dimmer('show');
}

/* function disable_elements() {
    $('#date_entry_bill').prop('disabled', true);
    $('#last_voucher').prop('disabled', true);
    $('#bill_num').prop('disabled', true);
    $('#provider').prop('disabled', true);
    $('#price').prop('disabled', true);
    $('#first_voucher').prop('disabled', true);
}

function enable_elements() {
    $('#date_entry_bill').prop('disabled', false);
    $('#last_voucher').prop('disabled', false);
    $('#bill_num').prop('disabled', false);
    $('#provider').prop('disabled', false);
    $('#price').prop('disabled', false);
    $('#first_voucher').prop('disabled', false);
} */