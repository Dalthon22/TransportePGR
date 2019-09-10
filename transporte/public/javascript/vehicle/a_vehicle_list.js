var title, message, clss, query1;
var current_plate;

$(function () {
    /* $('#vehiculos_table').DataTable({}); */

    //Verifica si el registro fue guardado con exito
    title = getParameterByName('title');
    message = getParameterByName('message');
    clss = getParameterByName('class');

    console.log(title);
    console.log(message);
    console.log(clss);

    if (title && message && clss) {
        addToast(title, clss, message);
    }

    $(".edit.yellow.icon").click(function () {
        var index = $(this).closest("tr")[0].rowIndex;
        var tr = $('#vehiculos_table').find("tr").eq(index);
        current_plate = tr.find("td").eq(1).text();
        console.log(tr);
        //alert('You click plate: ' + current_plate + " and the id is: " + index);
        url_list = encodeURI('vehiculos/gestionar?' + "matricula=" + current_plate);
        console.log(url_list);
        location.href = url_list;
    });

});

/* function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
} */

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.href);
    if (results == null)
        return "";
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "));
}

//Editar vehiculo


function addToast(_title, _class, _message) {
    $('body')
        .toast({
            title: _title,
            showIcon: true,
            class: _class,
            position: 'top right',
            displayTime: 0,
            closeIcon: true,
            message: _message,
            transition: {
                showMethod: 'zoom',
                showDuration: 100,
                hideMethod: 'fade',
                hideDuration: 500
            }
        });
}