$(function () {
    fillTable();
})

//llenar tabla
function fillTable() {
    //Llenar el data table con los datos de todos los folos correspondientes al usuario
    tab = $('#mytable').DataTable({
        "scrollCollapse": false,
        language: {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        },
        "columns": [{
                "width": "5%"
            },
            {
                "width": "35%"
            },
            {
                "width": "45%"
            },
            {
                "width": "15%"
            }
        ]
    });
}