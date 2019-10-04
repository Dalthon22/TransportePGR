$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });

});
$('#container').css('display', 'block');

function fillApproveButton() {
    $(".button.btnAprobe").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='folo06_id']").val();
        console.log(idchange);
        /* $('#AprobeModal').modal('show'); */
        $('.ui.form').form('reset');
        document.getElementById("folo6_id_Amodal").value = idchange;
    });
    $(".button.btnCancel").click(function (e) {
        var idchange = $(e.currentTarget).closest('td.btnDelete').find("input[name='folo06_id']").val();
        console.log(idchange);
        /* $('#AprobeModal').modal('show'); */
        $('.ui.form').form('reset');
        document.getElementById("folo6_id_Cmodal").value = idchange;
    });
};

$(function () {
    fillApproveButton();
});

$('#AprobeModal')
    .modal('attach events', '.btnAprobe.button', 'show');

$('#CancelModal')
    .modal('attach events', '.btnCancel.button', 'show');