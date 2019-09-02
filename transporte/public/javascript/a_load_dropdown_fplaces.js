function fillPlaces() {
    var sPlace = $("#idfplaces").val();
    var selectedMunicipio = $("#municipio").val();
    var placesSelect = $('#fplaces');
    placesSelect.empty();
    if (selectedMunicipio != null && selectedMunicipio != '') {
        $.getJSON('http://localhost:3000/lugares_frecuentes/getPlaces', {
            selectedMunicipio
        }, function (places) {
            if (places != null && !jQuery.isEmptyObject(places)) {
                placesSelect.append($('<option/>', {
                    value: null,
                    text: "--Seleccione un lugar--"
                }));
                $.each(places, function (index, place) {
                    if (place.id == sPlace) {
                        placesSelect.append($('<option/>', {
                            value: place.id,
                            text: place.name,
                            selected: true,
                        }))
                    } else {
                        placesSelect.append($('<option/>', {
                            value: place.id,
                            text: place.name,
                        }))
                    }
                });
            };
        });
    };
};


$(function () {
    fillPlaces();
});

$('#municipio').change(function () {
    fillPlaces();
});