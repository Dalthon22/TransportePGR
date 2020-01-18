$(function () {
    //Para obtener datos de empleado a mostrar en la navbar, así como también extraer roles
    var user = $.ajax({
        url: '/userinfo',
        async: true,
        type: 'GET',
        dataType: 'json',
        success: (data) => {
            console.log("Encontro usuario")
        }
    }).done(function (data, textStatus, jqXHR) {
        var user = data.user;
        $('#username').text(user.first_name + ' ' + user.last_name);




        /* a href="/solicitud_nueva" class="item" id="folo_ico">

         //<!-- Jefe de unidad -->
         <a href="/panel_de_aprobacion" class="item" id="aprobar_ico">

         <!-- admin vehículos -->
         <a href="/vehiculos" class="item" id="vehiculo_ico">

         <!-- Admin Vales -->
         <a href="/vales" class="item" id="vales_ico">

         <!-- Admin Vales -->
         <!-- Admin unidad transporte -->
         <a href="/lugares_frecuentes" class="item" id="lugares_frec_ico">
          
         <!-- Admin transporte -->
         <a href="/nuevos_requerimientos" class="item" id="app_requerimientos_ico">

         <!-- Admin IT -->
         <a href="/instituciones" class="item" id="instituciones_ico">

         <!-- Admin Transporte, Encargado de ruta -->
         <a href="/rutas" class="item" id="rutas_ico">

         <!-- Admin Transporte -->
         <a href="/configuracion_calendario" class="item" id="conf_calendario_ico">

         <!-- Admin vales -->
         <a href="/asignar_recursos/vales" class="item" id="asignar_vales_ico">

         <!-- Admin transporte -->
         <a href="/motoristas" class="item">

         <!-- Admin Transporte, Encargado de ruta -->
         <a href="/asignar_motorista" class="item" id="asignar_motorista_ico">
            
         </a>
         <!-- Admin transporte -->
         <a href="/misiones" class="item" id="mision_ico">

         <!-- Admin IT -->
         <a href="/usuarios" class="item" id="usuarios_ico">
         */
    });
});