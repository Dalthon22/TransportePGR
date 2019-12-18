$('.ui.form') //Validación.
    .form({
        inline: true,
        on: 'blur',
        fields: {
            driver_id: {
                identifier: 'driver_id',
                rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un motorista de la lista'
                }, {
                    type: 'not[--Seleccione un motorista--]',
                    prompt: 'Seleccione un motorista de la lista'
                }]
            },
        }
    });