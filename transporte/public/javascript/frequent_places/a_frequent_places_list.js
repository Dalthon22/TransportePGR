var filterValue, myTable;
var tableCells = "<tbody> <tr> <td> 1 </td> <td> 2 </td> <td> 3 </td> <td> 4 </td> <td> <i class =\"yellow big edit icon\" value=\"\" >< /i> <i class =\"red big window close icon\" value =\"\" >< /i> </td > </tr> </tbody>"

$(window).on('load', function () {
    console.log('window loaded');
    enviarToast();
});

$(document).ready(function () {
    myTable = $('#mytable').DataTable({
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
        fullTextSearch: 'exact',
        onChange: function (value, text, selectedItem) {
            console.log(selectedItem);
            filterValue = selectedItem.attr("value");
            console.log(filterValue);
            if (filterValue) {
                var url_list = encodeURI('http://localhost:3000/lugares_frecuentes?' + "filter=" + filterValue);
                console.log(url_list);
                //clearTableValues();
                //drawTableCells();
                fillTable(url_list);
                //location.href = url_list;
            } else {
                console.log("Valor de filtrado nulo");
            }

        }
    });

//Llena la tabla con los valores filtrados
function fillTable(URL) {
    //Llenar el data table
    var data = $.getJSON(URL);
    /* tab = $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
        ajax: {
            url: URL,
            type: 'GET',
        },
        "columns": [{
                "data": "name"
            },
            {
                "data": "detail"
            },
            {
                "data": "department.name"
            },
            {
                "data": "city.name"
            }
        ]
    }); */
    myTable.clear().rows.add(data).draw();
}

function clearTableValues() {
    $('#mytable').empty();
}

function drawTableCells() {
    $('#mytable').html(tableCells);
}

$('#container').css('display', 'block');