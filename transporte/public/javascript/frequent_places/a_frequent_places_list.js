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

function editar() {
    var url_list = '';
    $(".edit.yellow.icon").click(function () {
        var id = $(this).attr("value");
        url_list = encodeURI('lugares_frecuentes/editar?' + "fplace_id=" + id);
        console.log(url_list);
        location.href = url_list;
    });
}

function eliminar() {
    var url_list = '';
    $(".red.window.close.icon").click(function () {
        var id = $(this).attr("value");
        $('.ui.modal')
            .modal({
                closable: true,
                S
                onApprove: function () {
                    url_list = encodeURI('lugares_frecuentes/eliminar?' + "fplace_id=" + id);
                    console.log(url_list);
                    location.href = url_list;
                }
            })
            .modal('show');
    });
}





$('#container').css('display', 'block');