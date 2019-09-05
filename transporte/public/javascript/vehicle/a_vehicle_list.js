var title, message, clss, query1;

$(function () {
    /* $('#vehiculos_table').DataTable({}); */

    title = getParameterByName('title');
    message = getParameterByName('message');
    clss = getParameterByName('class');

    console.log(title);
    console.log(message);
    console.log(clss);

    if (title && message && clss) {
        successAddToast(title, clss, message);
    }
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


function successAddToast(_title, _class, _message) {
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