$(document).ready(function () {
    $('#mytable').DataTable({
        "scrollY": "500px",
        "scrollCollapse": true,
    });
});
var table = $('#example').DataTable();

$('#container').css('display', 'block');

function showDeleteModal() {
    var fplace_id = $(this).data('fplace_id');
    $("#deleteModal").modal('show');
    $("#deleteModal").modal({
        closable: true
    });
    $('#fplace_id_dmodal').val(fplace_id);
};