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
                    return data;
                }

            }
        ]
    });


}
$('#mytable tbody').on('click', '.remove.grey.alternate.link.icon', function (event) {
    var id_folo = parseInt($(this).attr('id'));
    console.log("Usted desea eliminar el folo:" + id_folo);
    //$('.segment').dimmer('set disabled');

    //$('#delete_modal').modal('show');
    $('#delete_modal')
        .modal({
            closable: false,
            onShow: function () {
                console.log("Voy a mostrar el folo" + id_folo);
                //DATOS PARA MOSTRAR SOBRE EL FOLO A ELIMINAR
                $.ajax({
                    url: 'solicitud_nueva/get/' + id_folo,
                    async: false,
                    type: 'GET',
                    dataType: 'json',
                    success: (data) => {
                        console.log("Folo que van a eliminar" + data.folo.id);
                        //Para setting de los labels
                        $("#off_date_lb").text(data.folo.off_date);
                        $("#off_hour_lb").text(data.folo.off_hour);
                        $("#return_hour_lb").text(data.folo.return_hour);
                        $("#Passenger_number_lb").text(data.folo.passengers_number);
                        $("#with_driver_lb").text((data.folo.with_driver ? "Si" : "No"));
                        if (data.folo.with_driver) {
                            $("#driver_name_lb").text("------");
                            $("#license_type_lb").text("------");
                        } else {
                            $("#driver_name_lb").text(data.folo.person_who_drive);
                            $("#license_type_lb").text(data.folo.license_type);
                        }
                        $("#mission_lb").text(data.folo.mission);
                        if ((data.folo.observation).length > 1) {
                            $("#observation_lb").text(data.folo.observation);
                        } else {
                            $("#observation_lb").text("Sin observaciones");
                        }
                        $("#created_at_lb").text(data.folo.created_at);
                    }
                })
            },
            onDeny: function () {

            },
            onApprove: function () {
                animateAddButton();
                showDimmer();

                $.ajax({
                    url: 'solicitud_nueva/delete/' + id_folo,
                    async: true,
                    type: 'POST',
                    dataType: 'json',
                    success: (data) => {
                        console.log(data.type);
                        if (!data.type) {
                            successAddToast(data.title, data.message)
                            noAnimateAddButton();
                            tab.ajax.reload();
                        } else {
                            noAnimateAddButton();

                            $('body')
                                .toast({
                                    title: data.title,
                                    showIcon: false,
                                    class: 'error',
                                    position: 'top right',
                                    displayTime: 0,
                                    closeIcon: true,
                                    message: data.message,
                                });

                        }
                        //Para setting de los labels

                    }
                });
            }
        })
        .modal('show')
});

function successAddToast(title, message) {
    $('.segment').dimmer('hide');
    // $('.segment').dimmer('set disabled');
    $('body')
        .toast({
            title: title,
            showIcon: true,
            class: 'success',
            position: 'top right',
            displayTime: 4000,
            closeIcon: true,
            message: message,
            /* className: {
                toast: 'ui message'
            } */
            transition: {
                showMethod: 'zoom',
                showDuration: 100,
                hideMethod: 'fade',
                hideDuration: 500
            }
        });
}

function showDimmer() {
    // $('.segment').dimmer('set active');
    $('.segment').dimmer({
        displayLoader: true,
        loaderVariation: 'slow blue medium elastic',
        loaderText: "Eliminando la solicitud...",
        closable: false,
    }).dimmer('show');
}

function animateAddButton() {
    $('.approve.button').api('set loading');
    showDimmer();
}

function noAnimateAddButton() {
    {
        $('.approve.button')
            .api('remove loading');
        //$('.segment').dimmer('set disabled');
        $('.segment').dimmer('hide');
        //enable_elements();
    }
}