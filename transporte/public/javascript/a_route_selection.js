/*Bind de los eventos para poder abir el modal correspondiente*/
$('#modalCancelar').modal('attach events', '.btnCancelar', 'show');
$('#modalContinuar').modal('attach events', '.btnContinuar', 'show');

/*para abrir el toast con el evento click*/
document.getElementById("btnInfoAceptar").addEventListener('click', function () {
    $('body')
        .toast({
            class: 'success',
            displayTime: 1000,
            title: 'Información',
            message: 'Realizando Asignación',
            showProgress: 'bottom'
        });
})


/* para utilizar data table */

$(document).ready(function () {
    $('#selectroutes').DataTable({
        /* "scrollY": "500px",
        "scrollCollapse": true, */
    });
});