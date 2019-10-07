$(function () {

    $('#mytable').DataTable({
        "scrollCollapse": true,
    });

    $(".edit.yellow.icon").click(function () {
        alert("You click");
        var index = $(this).closest("tr")[0].rowIndex;
        var tr = $('#mytable').find("tr").eq(index);
        var id = tr.find("td").eq(0).text();
        console.log(tr);
        alert('You click plate: ' + current_plate + " and the id is: " + index);
        url_list = encodeURI('rutas/actualizar?' + "route_id=" + id);
        console.log(url_list);
        //location.href = url_list;
    });

});