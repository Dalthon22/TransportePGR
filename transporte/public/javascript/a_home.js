var tab, data;

//Serializa la tabla
$(document).ready(function () {
    fillTable();
    $('body').append(tab);
    console.dir($('body'))

});

//llenar tabla
function fillTable() {
    //Llenar el data table
    tab = $('#mytable').DataTable({
        "scrollCollapse": false,
        ajax: {
            url: '/folos',
            type: 'GET',
        },
        "columns": [{
                "data": "off_date"
            },
            {
                "data": "off_hour"
            },
            {
                "data": "return_hour"
            },
            {
                "data": "passengers_number"
            },
            {
                "data": "with_driver"
            }, {
                "data": "buttons",
                "render": function (data, type, row, meta) {
                    console.log("Renderizamos:" + data);
                    return data;
                }

            }
        ]
    });


}

$('.remove.grey.alternate.link.icon').click(function () {
    console.log("Quiere eliminarme");
    prompt("Usted desea editar el folo: " + $(this).attr('id'));
});
/* $(".edit.yellow.icon").click(function () {
    var index = $(this).closest("tr")[0].rowIndex;
    var tr = $('#vehiculos_table').find("tr").eq(index);
    current_plate = tr.find("td").eq(1).text();
    console.log(tr);
    //alert('You click plate: ' + current_plate + " and the id is: " + index);
    url_list = encodeURI('vehiculos/gestionar?' + "matricula=" + current_plate);
    console.log(url_list);
    location.href = url_list;
}); */