$('#departamento').change(function () {
    var selectedDepartamento = $("#departamento").val();
    var municipiosSelect = $('#municipio');
    municipiosSelect.empty();
    if (selectedDepartamento != null && selectedDepartamento != '') {
        $.getJSON('http://localhost:3000/direccion/getMunicipios', {
            selectedDepartamento
        }, function (municipios) {
            if (municipios != null && !jQuery.isEmptyObject(municipios)) {
                municipiosSelect.append($('<option/>', {
                    value: null,
                    text: "--Seleccione un municipio--"
                }));
                $.each(municipios, function (index, municipio) {
                    municipiosSelect.append($('<option/>', {
                        value: municipio.id,
                        text: municipio.name
                    }));
                });
            };
        });
    };
});