/*Bind de los eventos para poder abir el modal correspondiente*/
$('#modalCancelar').modal('attach events', '.btnCancelar', 'show');
$('#modalContinuar').modal('attach events', '.btnContinuar', 'show');

/*para abrir el toast con el evento click*/
document.getElementById("btnInfoAceptar").addEventListener('click', function () {
    $('body')
        .toast({
            class: 'success',
            displayTime: 1000,
            title: 'Información',
            message: 'Realizando Asignación',
            showProgress: 'bottom'
        });
})

$('.col-master').click(function () {
    var idx = $(this).parent().index();
    console.log(idx);
    $('table td:nth-child(' + (idx + 1) + ') input.child').prop('checked', this.checked)
});

$('.child').change(function () {
    var $tr = $(this).closest('tr')
    $tr.find('input.row-master').prop('checked', $tr.find('.child').not(':checked').length == 0);

    var idx = $(this).parent().index(),
        $tds = $('table td:nth-child(' + (idx + 1) + ')');
    $tds.find('input.col-master').prop('checked', $tds.find('input.child').not(':checked').length == 0)
});