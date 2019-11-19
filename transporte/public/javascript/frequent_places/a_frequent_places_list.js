$(window).on('load', function () {
    console.log('window loaded');
    enviarToast();
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

/* function editar() {
    var url_list = '';
    $(".edit.yellow.icon").click(function () {
        var id = $(this).attr("value");
        url_list = encodeURI('lugares_frecuentes/editar?' + "fplace_id=" + id);
        console.log(url_list);
        location.href = url_list;
    });
} */

/* Detona el metodo editar en el back mediante el id en un querystring */
$(".edit.yellow.icon").click(function () {
    var id = $(this).attr("value");
    var url_list = encodeURI('lugares_frecuentes/editar?' + "fplace_id=" + id);
    console.log(url_list);
    location.href = url_list;
});

/* function eliminar() {
    var url_list = '';
    $(".red.window.close.icon").click(function () {
        var id = $(this).attr("value");
        $('.ui.modal')
            .modal({
                closable: true,
                onApprove: function () {
                    url_list = encodeURI('lugares_frecuentes/eliminar?' + "fplace_id=" + id);
                    console.log(url_list);
                    location.href = url_list;
                }
            })
            .modal('show');
    });
} */

/* Detona el metodo eliminar en el back mediante el id en un querystring */
$(".red.window.close.icon").click(function () {
    var id = $(this).attr("value");
    $('.ui.modal')
        .modal({
            closable: true,
            onApprove: function () {
                url_list = encodeURI('lugares_frecuentes/eliminar?' + "fplace_id=" + id);
                console.log(url_list);
                location.href = url_list;
            }
        })
        .modal('show');
});

/* Habilita el filtro de lugares frecuentes por ruta */
$('#div_ruta')
    .dropdown({
        ignoreDiacritics: true,
        sortSelect: true,
        fullTextSearch: 'exact'
    });

$('#ruta').change(function () {
    var route_name = $(this).attr("value");
    var route_id = $(".menu.transition.visible").children('.item').find(".active").first().attr("value");
    console.log(route_id);
    alert(route_id);
});

$('#container').css('display', 'block');