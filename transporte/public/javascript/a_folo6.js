$('.ui.form').form({
    //revalidate: true,
    inline: true,
    fields: {
        calendar1: {
            identifier: 'calendar1',
            rules: [{
                type: 'empty',
                prompt: 'Seleccione una fecha de salida'
            }]
        },
        time: {
            identifier: 'time',
            rules: [{
                type: 'empty',
                prompt: 'Seleccione una hora de salida'
            }]
        },
        time1: {
            identifier: 'time1',
            rules: [{
                type: 'empty',
                prompt: 'Seleccione una hora de retorno'
            }]
        },
        passengers_i: {
            identifier: 'passengers_i',
            rules: [{
                    type: 'empty',
                    prompt: 'Seleccione un horario de salida'
                },
                {
                    type: 'integer',
                    prompt: 'Ingrese un número válido de pasajeros'
                }
            ]
        },
        mision_i_id: {
            identifier: 'mision_i',
            rules: [{
                type: 'empty',
                prompt: 'Ingrese el motivo o misión de su viaje'
            }]
        },
    }
});

//Validación de campos si NO selecciona motorista
//valida select de licencia
$("#license_ls_id").change(function () {
    $(".ui.form").form('validate field', 'license_ls');
});
$("#n_driver_i").change(function () {
    $(".ui.form").form('validate field', 'n_driver_i');
});
//
//valida input de misión
$("#mision_i_id").keyup(function () {
    $(".ui.form").form('validate field', 'mision_i_id');
});
/*--Formato y setting de fecha--*/
var today = new Date();
var month_lb = today.getMonth() + 1;
//Para setting de los labels
$("#date_lb").text('' + today.getDate() + '/' + month_lb + '/' + today.getFullYear());
$("#unidad_lb").text('Unidad de familia');
$('#standard_calendar').calendar({
    monthFirst: false,
    type: 'date',
    minDate: new Date(today.getFullYear(), today.getMonth(), today.getDate()),
    onHide: function () {
        $(".ui.form").form('validate field', 'calendar1');
    },
    formatter: {
        date: function (date, settings) {
            if (!date) return '';
            var day = date.getDate();
            var month = date.getMonth() + 1;
            var year = date.getFullYear();
            return day + '/' + month + '/' + year;
        }
    }
});
/*--Checkbox motorista--*/
$('.ui.checkbox').checkbox('enable');
$('#driver_cb').checkbox({
    onChecked: function () {
        $('#n_driver_i').prop('disabled', true);
        $('#license_ls_id').prop('disabled', true);
        $('.ui.form').form('remove fields', ['name_driver_i', 'license_ls']);
        $(".ui.form").form('validate field', 'name_driver_i');
        $(".ui.form").form('validate field', 'license_ls');
        $('#license_ls_id').prop('selectedIndex', 0);
        $('#n_driver_i').val('');
    },
    onUnchecked: function () {
        $('#n_driver_i').prop('disabled', false);
        $('#license_ls_id').prop('disabled', false);
        $('.ui.form').form('add rule', 'n_driver_i', {
            rules: [{
                type: 'empty',
                prompt: 'Ingrese el nombre de la persona que conducirá'
            }]
        });
        $('.ui.form').form('add rule', 'license_ls', {
            rules: [{
                type: 'empty',
                prompt: 'Seleccione el tipo de licencia que posee el conductor'
            }]
        });
    }
})
/* --TIMER´s--*/
$('#time_calendar')
    .calendar({
        type: 'time',
        minTimeGap: '30',
        endCalendar: $('#time_calendar1'),
        onHide: function (date, text, mode) {
            $(".ui.form").form('validate field', 'time');
        }
    });
$('#time_calendar1')
    .calendar({
        type: 'time',
        minTimeGap: '30',
        startCalendar: $('#time_calendar'),
        onChange: function (date, text, mode) {
            var dat = new Date($('#time_calendar').calendar('get date'));
            console.log(dat.getHours() + ':' + dat.getMinutes());
            //$(".ui.form").form('validate field', 'time1');
        },
        onHide: function (date, text, mode) {
            $(".ui.form").form('validate field', 'time1');
        }
    });
//Esconde los dropdown.
$('#createdAddress').hide();
$('#selectedFPlace').hide();

//Función que guarda en la BD las direcciones que se van ingresando a la tabla.
$('#addAddress').click(function () {
    event.preventDefault();
    var idSelDepto = $('#departamento').val();
    var idSelMun = $('#municipio').val();
    var selectedPlace = $('#fplaces').val();
    var destinyPlace = $('#destiny_place_i').val();  //Obtengo todos los valores
    var direction = $('#direction_txt').val();
    var selectedPlaceTxt = $('#fplaces option:selected').text();
    var dirCreadas = $('#createdAddress'); //Obtengo el dropdown de direcciones que está oculto
    var selectedFPlace = $('#selectedFPlace'); //Dropdown que tiene solo los lugares frecuentes ingresados
    $.post('/direccion/add', { //Hago la petición post
        idSelDepto, idSelMun, selectedPlace, destinyPlace, direction, selectedPlaceTxt
    }, 
        function (dir) {
            //Agrego al dropdown el id de la dirección creada
            if (dir != null && !jQuery.isEmptyObject(dir)) {
                dirCreadas.append($('<option/>', {
                    value: dir.id,
                    text: dir.id
                }));
                $('<i></i>', {
                    class: "red big center window close icon",
                    value: dir.id,
                    id: "delAddress",
                    "on": {
                        "click": function (){
                            console.log("Funciona.");
                            $(this).parents('tr').remove();
                            address = $(this).toArray();
                            id_address = address[0].attributes.value.value;
                            $.post('/direccion/delete', {id_address});
                        },
                    },
                }).appendTo('#addressTable tbody tr td:last');
            };
        });
    //Agrego el lugar frecuente seleccionado al dropdown
    selectedFPlace.append($('<option/>', {
        value: selectedPlace,
        text: selectedPlaceTxt,
    })); 
    console.log(dirCreadas); //Muestro el dropdown en consola (navegador) para verificar su contenido.
    console.log(selectedFPlace);
});

//Función que agrega las direcciones a la tabla al hacer clic en el botón "Agregar dirección"
$('#addAddress').click(function() {
    //Obtiene los valores de los combobox
    var selectedPlace = $('#fplaces option:selected').text();
    var selectedDepartamento = $('#departamento option:selected').text();
    var selectedMunicipio = $('#municipio option:selected').text();
    var destinyPlace = $('#destiny_place_i').val();
    var direction = $('#direction_txt').val();
    //Si el usuario elige la opción "Otro" del combobox de lugares frecuentes
    if(selectedPlace=="Otro"){
        //Inserción de elementos a la tabla
        $('#addressTable tbody').append("<tr>" +
        "<td>" + destinyPlace + "</td>" +
        "<td>" + direction + "</td>" +
        "<td>" + selectedDepartamento + "</td>" +
        "<td>" + selectedMunicipio + "</td>" +
        "<td></td>" +
      "</tr>");
        //Reinicia los combobox
        $('#fplaces').val("");
        $('#departamento').val("");
        $('#municipio').val("");
        $('#destiny_place_i').val("");
        $('#direction_txt').val("");
    } else { //Si el usuario selecciona un lugar frecuente
        //Inserción de elementos a la tabla
        $('#addressTable tbody').append("<tr>" +
        "<td>" + selectedPlace + "</td>" +
        "<td></td>" +
        "<td>" + selectedDepartamento + "</td>" +
        "<td>" + selectedMunicipio + "</td>" +
        "<td></td>" +
      "</tr>");
        //Reinicia los combobox
        $('#fplaces').val("");
        $('#departamento').val("");
        $('#municipio').val("");
    };
});

/*Función que habilita los campos "Nombre del destino" y "Detalle de dirección"
si el usuario seleccionó la opción "Otro" del combobox de lugares frecuentes.*/
$('#fplaces').change(function(){
    if($('#fplaces').val() == 10000){
        $('#destiny_place_i').prop('disabled', false);
        $('#direction_txt').prop('disabled', false);
    };
});

//Función para crear el PDF del Folo-06.
$('#save_print_btn').click(function () {
    event.preventDefault();
    //Recolección de datos.
    fechaSolicitud = $('#date_lb').text();
    unidadSolicitante = $('#unidad_lb').text();
    fechaSalida = $('#calendar1_id').val();
    horaSalida = $('#time').val();
    horaRetorno = $('#time1').val();
    var motorista; //1 = no ; 0 = sí
     if($('#driver_i').is(":checked")){
         motorista = 0;
     } else {
         motorista = 1;
     }
    cantidadPasajeros = $('#passengers_i').val();  
    personaConducir = $('#n_driver_i').val();
    tipoLicencia = $('#license_ls_id option:selected').text();
    tablaDirecciones = document.getElementById('addressTable');
    mision = $('#mision_i_id').val();
    observaciones = $('#details_i').val();
    var c1, c2, c3, c4, direccion, b;
    var direcciones = [];
    /*La propiedad 'length' en JS comienza en 1.
    La primera fila es el encabezado, a partir de la segunda van direcciones.
    Si solo hay una dirección, se asigna a la variable 'dirección'.
    Si hay más se asignan al array 'direcciones'. */
    if(tablaDirecciones.rows.length == 2){
        //Sin embargo, internamente las filas y las celdas siempre comienzan en 0.
        //Fila 0 es el encabezado, fila 1 en adelante son las direcciones.
        c1 = tablaDirecciones.rows[1].cells[0].innerHTML;
        c2 = tablaDirecciones.rows[1].cells[1].innerHTML;
        c3 = tablaDirecciones.rows[1].cells[2].innerHTML;
        c4 = tablaDirecciones.rows[1].cells[3].innerHTML;
        direccion = c1 + ', ' + c2 + ', ' + c3 + ', ' + c4 + ".";
        b = 0; //No crea listado de direcciones
    } else {
        direccion = "Ver listado de direcciones en página anexo.";
        b = 1; //Crea listado de direcciones
    };
    for(var i=1; i < tablaDirecciones.rows.length; i++){
        c1 = tablaDirecciones.rows[i].cells[0].innerHTML;
        c2 = tablaDirecciones.rows[i].cells[1].innerHTML;
        c3 = tablaDirecciones.rows[i].cells[2].innerHTML;
        c4 = tablaDirecciones.rows[i].cells[3].innerHTML;
        direcciones.push("\n"+i+" - "+c1 + ', ' + c2 + ', ' + c3 + ',' + c4 + ".");
    };
    //Convierto el array en un string.
    direcciones = direcciones.toString();
    $.post('/solicitud/createPDF', { //Petición ajax post.
        fechaSolicitud, 
        unidadSolicitante, 
        fechaSalida, 
        horaSalida, 
        horaRetorno, 
        motorista, 
        cantidadPasajeros,
        personaConducir,
        tipoLicencia,
        direccion,
        direcciones,
        mision,
        observaciones,
        b
    },
    //Abre el pdf en una nueva ventana.
    function (result) {
       window.open(result);
    });
    /* Solo funciona en Mozilla Firefox, en Google Chrome se abre una pestaña en blanco.
    En IE 11 ni siquiera abre la ventana. No tengo Edge para probar ahí.
    Tampoco es posible cambiar el nombre con el que se descarga el PDF.*/
});
