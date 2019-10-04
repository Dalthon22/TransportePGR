$(window).on('load', function () {
    console.log('window loaded');
    alert("si muestra");
    this.enviarToast();
});

$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });
    var type = $('input#messagetype').val();
    var info = $('input#messageinfo').val();
    console.log(type);
    console.log(info);
    if (type == 1) {
        if (info == 1) {
            $('body')
                .toast({
                    class: 'success',
                    onclick: 'null',
                    message: `El Requerimiento fue aprobado`
                });
        } else if (info == 0) {
            $('body')
                .toast({
                    class: 'error',
                    message: `Error al modificar la base de Datos.`
                });
        }
    } else if (type == 0) {
        if (info == 1) {
            $('body')
                .toast({
                    class: 'warning',
                    message: `El Requerimiento fue cancelado`
                });
        } else if (info == 0) {
            $('body')
                .toast({
                    class: 'error',
                    message: `Error al modificar la base de Datos.`
                });
        }
    };
    enviarToast();
});

function enviarToast() {
    var type = $('input#messagetype').val();
    var info = $('input#messageinfo').val();
    console.log(type);
    console.log(info);
    if (type == 1) {
        if (info == 1) {
            $('body')
                .toast({
                    class: 'success',
                    message: `El Requerimiento fue aprobado`
                });
        } else if (info == 0) {
            $('body')
                .toast({
                    class: 'error',
                    message: `Error al modificar la base de Datos.`
                });
        }
    } else if (type == 0) {
        if (info == 1) {
            $('body')
                .toast({
                    class: 'warning',
                    message: `El Requerimiento fue cancelado`
                });
        } else if (info == 0) {
            $('body')
                .toast({
                    class: 'error',
                    message: `Error al modificar la base de Datos.`
                });
        }
    }
};

$('#container').css('display', 'block');


function fillDeleteButtons() {
    $(".button.btnDeleteFplace").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='fplace_id']").val();
        console.log(idchange);
        $('#deleteModal').modal('show');
        $('.ui.form').form('reset');
        document.getElementById("fplace_id_dmodal").value = idchange;
    });
};

$(function () {
    fillDeleteButtons();
});
$('.ui.modal')
    .modal('attach events', '.btnDeleteFplace.button', 'show');
/* $('#mytable').on("DOMSubtreeModified", function () {
    fillDeleteButtons();
}); */