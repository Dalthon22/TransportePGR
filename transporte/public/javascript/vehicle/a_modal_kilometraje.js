$('#modal_update_km')
    .modal('attach events', '#update_km', 'show');

$('#km_cb').checkbox('enable').checkbox('uncheck');
//Para registrar si hay cambio en el kilometraje del vehículo
$('#km_cb').checkbox({
    onChecked: function () {
        $('.ui.form').form('add rule', 'km_input', {
            rules: [{
                    type: 'empty',
                    prompt: 'Ingrese un nuevo kilometraje'
                }, {
                    type: 'integer[1...999999999999]',
                    prompt: 'Este campo solo permite números enteros.'
                }, //Válida la longitud de caracteres
                {
                    type: 'regExp[/^[0-9]{1,16}$/]',
                    prompt: 'Por favor ingrese un número con longitud válida '
                }
            ]
        });
        $('#km_input').removeAttr('readonly');
    },
    onUnchecked: function () {
        $('#km_input').attr('readonly');
        /*Setear el valor por defecto del campo, es decir, el último kilometraje ingresado*/
        $('#km_input').val(123456)
        $('#update_km_form').form('remove field', 'km_input');
    }
})
$('#update_km_form').form({
    on: 'blur',
    revalidate: true,
    inline: true,
    fields: {
        motive_dropdown: {
            identifier: 'motive_dropdown',
            rules: [{
                type: 'empty',
                prompt: 'Por favor seleccione un motivo de actulización de kilometraje'
            }]
        }
    },
});