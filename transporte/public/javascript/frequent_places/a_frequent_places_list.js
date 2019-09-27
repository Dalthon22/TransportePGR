$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });
});
var table = $('#example').DataTable();

$('#container').css('display', 'block');


function fillDeleteButtons() {
    $(".button.btnDeleteFplace").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='fplace_id']").val();
        console.log(idchange);
        $('#deleteModal').modal('show');
        $('.ui.form').form('reset');
        document.getElementById("fplace_id_dmodal").value = idchange;
    });
};

$(function () {
    fillDeleteButtons();
});

/* $('#mytable').on("DOMSubtreeModified", function () {
    fillDeleteButtons();
}); */