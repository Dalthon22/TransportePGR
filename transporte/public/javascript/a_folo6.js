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
         mision_i: {
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
     $(".ui.form").form('validate field', 'name_driver_i');
 });
 //
 //valida input de misión
 $("#mision_i_id").keyup(function () {
     $(".ui.form").form('validate field', 'mision_i');
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
         $('.ui.form').form('add rule', 'name_driver_i', {
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
         },
         onchange: function (date, text, mode) {
             console.log("Hora de salida: " + date + " Formato string" + text + " y mode:" + mode);
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