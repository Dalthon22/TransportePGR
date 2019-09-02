$(function () {
    $('#vehiculos_table').DataTable({
        /* "scrollY": "500px",
        "scrollCollapse": true, */
    });
});



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