/* Asignamos el formato de datables a nuestra tabla */
$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });

});

/* Al cargar la pantalla completamente se muestran los mensajes */
$(window).on('load', function () {
    console.log('window loaded');
    this.enviarToast();
});

/* Para mostrar el toast */
/* type = 1 ó 0 --- depende si se ha aprobado o cancelado el folo  */
/* info = 1 ó 0 --- si se ingreso correctamente o hubo error en la base */
function enviarToast() {
    var type = $('input#messagetype').val();
    var info = $('input#messageinfo').val(); /* Tomamos los valores de los input en el HTML */
    if (type == 'true') {
        if (info == 'true') {
            $('body')
                .toast({
                    class: 'success',
                    message: `El Requerimiento fue aprobado`,
                    position: 'top right'
                });
        } else if (info == 'false') {
            $('body')
                .toast({
                    class: 'error',
                    position: 'top right',
                    message: `Error al modificar la base de Datos.`
                });
        }
    } else if (type == 'false') {
        if (info == 'true') {
            $('body')
                .toast({
                    class: 'warning',
                    position: 'top right',
                    message: `El Requerimiento fue cancelado`
                });
        } else if (info == 'false') {
            $('body')
                .toast({
                    class: 'error',
                    position: 'top right',
                    message: `Error al modificar la base de Datos.`
                });
        }
    }
};

$('#container').css('display', 'block'); /* para arreglar un error de datatables */

/* fill approve mueve el id del folo que se modificara desde la tabla al modal */
function fillApproveButton() {
    /* Asociamos el evento al boton aprobar */
    $(".button.btnAprobe").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='folo06_id']").val(); /* se busca el id y se asigna al form */
        console.log(idchange);
        $('.ui.form').form('reset');
        document.getElementById("folo6_id_Amodal").value = idchange;
    });
    /* Asociamos el evento al boton cancelar */
    $(".button.btnCancel").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='folo06_id']").val(); /* se busca el id y se asigna al form */
        console.log(idchange);
        $('.ui.form').form('reset');
        document.getElementById("folo6_id_Cmodal").value = idchange;
    });
};

$(function () {
    fillApproveButton();
});
/* Bind de los eventos para poder abrir el modal correspondiente */
$('#AprobeModal')
    .modal('attach events', '.btnAprobe.button', 'show');

$('#CancelModal')
    .modal('attach events', '.btnCancel.button', 'show');