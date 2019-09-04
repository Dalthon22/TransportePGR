$(function () {
    $('#vehiculos_table').DataTable({
        /* "scrollY": "500px",
        "scrollCollapse": true, */
    });

    let success = false;
    alert(success);
});


function successAddToast(_title, _class, _message) {
    $('body')
        .toast({
            title: _title,
            showIcon: true,
            class: _class,
            position: 'top right',
            displayTime: 3000,
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