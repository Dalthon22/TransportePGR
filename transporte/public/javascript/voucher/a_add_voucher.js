//HABILITA EL INPUT DEL ULTIMO VALE 
$("#first_voucher_id").change(function () {
    if ($("#first_voucher_id").val() != "") {
        $("#last_voucher_id").prop('disabled', false);
    } else {
        $("#last_voucher_id").prop('disabled', true);
        $("#last_voucher_id").val("");
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
    if (parseInt($("#last_voucher_id").val()) <= parseInt($("#first_voucher_id").val())) {
        valido = false;
    }
    console.log(valido);
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
            nominal_value: {
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

$(function () {
    $("#show_add_form_btn").click(function () {
        $('#add_modal').modal('show');
        $('.ui.form').form('reset');
        $('#add_modal')
            .modal({
                closable: false,
                onDeny: function () {
                    $('.ui.form').form('reset');
                    return true;
                },
                onApprove: function () {
                    $('.ui.form').form('validate form');
                    if ($('.ui.form').form('is valid')) {
                        $('#voucher_cant_id').val(parseInt($("#last_voucher_id").val()) - parseInt($("#first_voucher_id").val()));
                        alert("Se ingresaran " + $('#voucher_cant_id').val());
                    } else {
                        return false;
                    }
                }
            })
            .modal('show');
        var today = new Date();

        $('#standard_calendar').calendar({
            monthFirst: false,
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
                    return day + '/' + month + '/' + year;
                }
            }
        });
    });
});