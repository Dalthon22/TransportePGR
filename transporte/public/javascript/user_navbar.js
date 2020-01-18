$(function () {
    var user = $.ajax({
        url: '/userinfo',
        async: true,
        type: 'GET',
        dataType: 'json',
        success: (data) => {
            console.log("Encontro usuario")
        }
    }).done(function (data, textStatus, jqXHR) {
        var user = data.user;
        $('#username').text(user.first_name + ' ' + user.last_name);
    })
});