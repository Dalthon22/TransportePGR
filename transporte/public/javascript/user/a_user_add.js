$(function () {
    $('.ui.form')
        .form({
            inline: true,
            on: 'blur',
            fields: {
                first_name: {
                    identifier: 'first_name',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese el nombre del empleado'
                    }]
                },
                last_name: {
                    identifier: 'last_name',
                    rules: [{
                        type: 'empty',
                        prompt: 'Por favor ingrese los apellidos'
                    }]
                },
                email: {
                    identifier: 'email',
                    rules: [{
                        type: 'empty',
                        prompt: 'Ingrese el correo electrónico del empleado'
                    }, {
                        type: 'email',
                        prompt: 'Ingrese un Email valido'
                    }]
                },
                password: {
                    identifier: 'password',
                    rules: [{
                            type: 'empty',
                            prompt: 'Ingrese la contraseña de usuario'
                        },
                        {
                            type: 'minLength[8]',
                            prompt: 'Su contraseña debe tener más de 8 caracteres'
                        }, {
                            type: 'maxLength[25]',
                            prompt: 'Su contraseña debe tener no más a 25 caracteres'
                        }
                    ]
                }
            }
        });

    $('.ui.toggle.checkbox').checkbox('set enabled');
});

$('#pw_icon').click(function () {
    if (!$(this).hasClass('slash')) {
        $('#password').attr('type', 'password');
        $(this).addClass('slash');
    } else {
        $('#password').attr('type', 'text');
        $(this).removeClass('slash');
    }
})

/*
Detona el proceso de insercion del vehiculo
28092019_DD 
*/
$("#add_btn").click(function () {
    insert_user();
});

/*
Metodo Ajax de creacion/actulizacion de usuario
04012019_DD
*/
function insert_user() {
    $('.ui.toast').remove();
    $('.ui.form').form('validate form');
    if ($('.ui.form').form('is valid')) {
        $.ajax({
            url: "/usuarios/gestionar",
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