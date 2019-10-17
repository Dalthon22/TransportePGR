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


/* para la seleccion de los checkbox */





/* $("#selectall").on("click", function () {
    $(".case").prop("checked", this.checked);
});

// if all checkbox are selected, check the selectall checkbox and viceversa  
$(".case").on("click", function () {
    if ($(".case").length == $(".case:checked").length) {
        $("#selectall").prop("checked", true);
    } else {
        $("#selectall").prop("checked", false);
    }
}); */



/* $(".micheckbox").on('change', function () {
    if ($(this).is(':checked')) {
        // Hacer algo si el checkbox ha sido seleccionado
        alert("El checkbox con valor " + $(this).val() + " ha sido seleccionado");
    } else {
        // Hacer algo si el checkbox ha sido deseleccionado
        alert("El checkbox con valor " + $(this).val() + " ha sido deseleccionado");
    }
}); */


/* para utilizar data table */

/* $(document).ready(function () {
    $('#selectroutes').DataTable({
        // "scrollY": "500px",
        //"scrollCollapse": true, 
    });
}); */