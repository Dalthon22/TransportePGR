var tab, data;

//Serializa la tabla
$(document).ready(function () {
    fillTable();
});

//llenar tabla
function fillTable() {
    //Llenar el data table
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
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
            },
            {
                "data": "actions"

            }
        ]
    });
}