$(window).on('load', function () {
    console.log('window loaded');
    this.enviarToast();
});

$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });
});


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

$('#container').css('display', 'block');


function fillDeleteButtons() {
    $(".button.btnDeleteFplace").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='fplace_id']").val(); /* se busca el id y se asigna al form */
        console.log(idchange);
        $('.ui.form').form('reset');
        document.getElementById("fplace_id_dmodal").value = idchange;
    });
};

$(function () {
    fillDeleteButtons();
});

$('#deleteModal')
    .modal('attach events', '.btnDeleteFplace.button', 'show');