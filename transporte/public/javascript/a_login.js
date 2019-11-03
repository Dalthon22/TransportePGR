$(function () {
    $(".ui.form")
        .form({
            fields: {
                email: {
                    identifier: "e-mail",
                    rules: [{
                            type: "empty",
                            prompt: "Por favor introduzca su correo electronico"
                        },
                        {
                            type: "e-mail",
                            prompt: "Porfavor introduzca una direccion de correo electronico valida"
                        }
                    ]
                },
                password: {
                    identifier: "password",
                    rules: [{
                            type: "empty",
                            prompt: "Por favor introduzca su contraseña"
                        },
                        {
                            type: "length[3]",
                            prompt: "La contraseña deve tener al menos 3 caracteres"
                        }
                    ]
                }
            }
        });
});
