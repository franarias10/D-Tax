
function cambiacolor_over(celda) { celda.style.backgroundColor = "#D0D0CE" }
function cambiacolor_out(celda) { celda.style.backgroundColor = "#ffffff" }





function linea_seccion(nro){

    if (nro == 1) {
        var estado = $('#lineas_seccion1').css('display');
        if (estado == "none") {
            $('#lineas_seccion1').slideDown();
        }
        if (estado == "block") {
            $('#lineas_seccion1').slideUp();
        }
       
    }

}


function abrir_formulario2_select(id_contribuyente,at) {

    window.location.href = "contribuyente.aspx?contribuyente="+id_contribuyente+"&at="+at;


}



function abrir_f22(at) {
    $('#texto_f22').hide('slow');
    $('#img_f22').hide('slow');
    $('#tbl_crear_f22').hide();
    $('#fade').fadeIn();
    $('#light').fadeIn();
    setTimeout(function () {
        $('#fade').fadeOut();
        $('#light').fadeOut();
        $('#txt_f22').html('Abrir Formulario 22');
        $('#texto_nuevo_f22').show('slow');
        $('#grid_nuevo_f22').show('slow');
        $('#tbl_abrir_f22').show('slow');

    }, 1000);
    $('#at').text(at);
    cargar_contribuyentes_con_f22(at);
}


function cargar_contribuyentes_con_f22(at) {
    var id_user = $('#id_user').text();
    var perfil = $('#perfil').text();
    //var perfil = $('#perfil').text();
    var actionData = "{'id_user': '" + id_user + "','at': '" + at + "'}";
    $.ajax(
 {

     url: "default.aspx/cargarContribuyentesConF22",
     data: actionData,
     dataType: "json",
     type: "POST",
     contentType: "application/json; charset=utf-8",
     success: function (msg) {
         $('#contribuyentes_f22').html(msg.d);

     },
     error: function (result) {
         alert("ERROR " + result.status + ' ' + result.statusText);
     }
 });
}




function abrir_linea(nro) {
        //ocultamos todas los recuadros
        $('#recuadro1').hide();
        //ocultamos todas las lineas
        $('#linea1').hide();
        $('#linea2').hide();
        $('#linea3').hide();
        $('#linea4').hide();
        $('#linea5').hide();
        $('#linea6').hide();
        $('#linea8').hide();
        $('#linea9').hide();
        $('#linea10').hide();

        //mostramos la linea seleccionada
        $('#linea'+nro).show();

    }


    function abrir_recuadro(nro) {

        //ocultamos todas las lineas
        $('#linea1').hide();
        $('#linea2').hide();
        $('#linea3').hide();
        $('#linea4').hide();
        $('#linea5').hide();
        $('#linea6').hide();
        $('#linea8').hide();
        $('#linea9').hide();
        $('#linea10').hide();


        //ocultamos todas los recuadros
        $('#recuadro1').hide();
        

        //mostramos la linea seleccionada
        $('#recuadro' + nro).show();
    
    
    }

    function abrir_contribuyentes() {
   
        $('#img_f22').hide('slow');
        $('#grid_contribuyentes').show('slow');

    }

    function abrir_secciones_anverso() {

        var estado = $('#seccion_anverso').css('display');
        if (estado == "none") {
            $('#seccion_anverso').slideDown('slow');
        }
        if (estado == "block") {
            $('#seccion_anverso').slideUp('slow');
        }
   

    }

    function abrir_secciones_reverso() {

        var estado = $('#seccion_reverso').css('display');
        if (estado == "none") {
            $('#seccion_reverso').slideDown('fast');
        }
        if (estado == "block") {
            $('#seccion_reverso').slideUp('fast');
        }


    }


    function nuevo_f22(at) {
        $('#tbl_abrir_f22').hide();
        $('#texto_f22').hide('slow');
        $('#img_f22').hide('slow');
        $('#fade').fadeIn();
        $('#light').fadeIn();
        setTimeout(function () {
            $('#fade').fadeOut();
            $('#light').fadeOut();
            $('#texto_nuevo_f22').show('slow');
            $('#txt_f22').html('Nuevo Formulario 22');
            $('#grid_nuevo_f22').show('slow');
            $('#tbl_crear_f22').show('slow');
            
        }, 1000);
        $('#at').text(at);
        cargar_contribuyentes_sinf22(at);
    }

    function abrir_crear_f22(valor) {
        traer_revisores();
        traer_aprobadores();
        $('#fade').fadeIn();
        $('#crear_f22').show('slow');
        $('#contribuyente').text(valor);
    }

    function crear_f22() {

        var id_revisor = $('#revisores').val();
        var id_aprobador = $('#aprobadores').val();
        var at = $('#at').text();
        var id_user = $('#id_user').text(); 
        var id_contribuyente = $('#contribuyente').text();
        if (id_revisor.length == 0 || id_aprobador.length == 0 || at.length == 0 || id_user.length == 0 || id_contribuyente.length == 0) {

            alert('Debe seleccionar Revisor y Aprobador');
        }
        else {
            $('#crear_f22').hide();
            $('#light').fadeIn();
            setTimeout(function () {
                ajax_crear_f22(id_user, id_revisor, id_aprobador, at, id_contribuyente);
                $('#light').fadeOut();
                $('#fade').fadeOut();
            }, 1000);
        
        }
    }

    function ajax_crear_f22(id_user, id_revisor, id_aprobador, at, id_contribuyente) {
   
        var actionData = "{'id_user': '" + id_user + "','id_revisor': '" + id_revisor + "','id_aprobador': '" + id_aprobador + "','at': '" + at + "','id_contribuyente': '" + id_contribuyente + "'}";
        $.ajax(
       {
           url: "default.aspx/crear_f22",
           data: actionData,
           dataType: "json",
           type: "POST",
           contentType: "application/json; charset=utf-8",
           success: function (msg) {
               if (msg.d != 1) {
                   alert('Ocurrió un error al crear el Formulario 22');
               }
               else {
                   alert('Fué creado exitosamente el Formulario 22.');
                   nuevo_f22(at);
               }
           },
           error: function (result) {
               alert("ERROR " + result.status + ' ' + result.statusText);
           }
       });
    }


    function ver_cod(cod) {
        $('#fade_validaciones').fadeOut();
        $('#validaciones').fadeOut();

        $('#nro749').css('border','1px solid red');

        $('html,body').animate({
            scrollTop: $("#cod" + cod).offset().top
        }, 1000);
    }

    function desabilitar(nro) {
        if (nro ==613) {
            disabled_rec6();
            disabled_rec3();
        }

        if (nro == 614) {

            enabled_rec6();
            enabled_rec3();
        }

        if (nro == 805) {
            var c805 = $("input[id='cod805']:checkbox").is(':checked');
            if (c805 == true) {
                $('#cod813').attr('disabled', true);
                $("#cod813").attr('checked', false);
            }
            else {
                $('#cod813').attr('disabled', false);
            }
        
        }

        if (nro == 813) {
            var c813 = $("input[id='cod813']:checkbox").is(':checked');
            if (c813 == true) {
                $('#cod805').attr('disabled', true);
                $("#cod805").attr('checked', false);
            }
            else {
                $('#cod805').attr('disabled', false);
            }

        }

    
    }

    function enabled_rec3() {



        $('#cod101').attr('readonly', false);
        $('#cod101').css('background-color', '#ffffff');

        $('#cod784').attr('readonly', false);
        $('#cod784').css('background-color', '#ffffff');

        $('#cod783').attr('readonly', false);
        $('#cod783').css('background-color', '#ffffff');

        $('#cod129').attr('readonly', false);
        $('#cod129').css('background-color', '#ffffff');

        $('#cod647').attr('readonly', false);
        $('#cod647').css('background-color', '#ffffff');

        $('#cod785').attr('readonly', false);
        $('#cod785').css('background-color', '#ffffff');

        $('#cod648').attr('readonly', false);
        $('#cod648').css('background-color', '#ffffff');

        $('#cod815').attr('readonly', false);
        $('#cod815').css('background-color', '#ffffff');

        $('#cod741').attr('readonly', false);
        $('#cod741').css('background-color', '#ffffff');

        $('#cod122').attr('readonly', false);
        $('#cod122').css('background-color', '#ffffff');

        $('#cod123').attr('readonly', false);
        $('#cod123').css('background-color', '#ffffff');

        $('#cod102').attr('readonly', false);
        $('#cod102').css('background-color', '#ffffff');

        $('#cod645').attr('readonly', false);
        $('#cod645').css('background-color', '#ffffff');

        $('#cod893').attr('readonly', false);
        $('#cod893').css('background-color', '#ffffff');

        $('#cod894').attr('readonly', false);
        $('#cod894').css('background-color', '#ffffff');

        $('#cod646').attr('readonly', false);
        $('#cod646').css('background-color', '#ffffff');

        $('#cod843').attr('readonly', false);
        $('#cod843').css('background-color', '#ffffff');

        $('#cod844').attr('readonly', false);
        $('#cod844').css('background-color', '#ffffff');

        $('#cod940').attr('readonly', false);
        $('#cod940').css('background-color', '#ffffff');


        $('#cod942').attr('readonly', false);
        $('#cod942').css('background-color', '#ffffff');

        $('#cod938').attr('readonly', false);
        $('#cod938').css('background-color', '#ffffff');

        $('#cod950').attr('readonly', false);
        $('#cod950').css('background-color', '#ffffff');

        $('#cod949').attr('readonly', false);
        $('#cod949').css('background-color', '#ffffff');

        $('#cod932').attr('readonly', false);
        $('#cod932').css('background-color', '#ffffff');


        $('#cod933').attr('readonly', false);
        $('#cod933').css('background-color', '#ffffff');

        $('#cod934').attr('readonly', false);
        $('#cod934').css('background-color', '#ffffff');

        $('#cod935').attr('readonly', false);
        $('#cod935').css('background-color', '#ffffff');

        $('#cod939').attr('readonly', false);
        $('#cod939').css('background-color', '#ffffff');

        $('#cod977').attr('readonly', false);
        $('#cod977').css('background-color', '#ffffff');


        $('#cod978').attr('readonly', false);
        $('#cod978').css('background-color', '#ffffff');


        $('#cod1003').attr('readonly', false);
        $('#cod1003').css('background-color', '#ffffff');


        $('#cod1004').attr('readonly', false);
        $('#cod1004').css('background-color', '#ffffff');


        $('#cod1005').attr('readonly', false);
        $('#cod1005').css('background-color', '#ffffff');




    }

    function disabled_rec3() {


    
        $('#cod101').attr('readonly', true);
        $('#cod101').css('background-color', '#ededed');
        $('#cod101').val('0');
   
        $('#cod784').attr('readonly', true);
        $('#cod784').css('background-color', '#ededed');
        $('#cod784').val('0');
    
        $('#cod783').attr('readonly', true);
        $('#cod783').css('background-color', '#ededed');
        $('#cod783').val('0');
        
        $('#cod129').attr('readonly', true);
        $('#cod129').css('background-color', '#ededed');
        $('#cod129').val('0');
    
        $('#cod647').attr('readonly', true);
        $('#cod647').css('background-color', '#ededed');
        $('#cod647').val('0');
    
        $('#cod785').attr('readonly', true);
        $('#cod785').css('background-color', '#ededed');
        $('#cod785').val('0');
    
        $('#cod648').attr('readonly', true);
        $('#cod648').css('background-color', '#ededed');
        $('#cod648').val('0');
    
        $('#cod815').attr('readonly', true);
        $('#cod815').css('background-color', '#ededed');
        $('#cod815').val('0');
    
        $('#cod741').attr('readonly', true);
        $('#cod741').css('background-color', '#ededed');
        $('#cod741').val('0');
    
        $('#cod122').attr('readonly', true);
        $('#cod122').css('background-color', '#ededed');
        $('#cod122').val('0');
    
        $('#cod123').attr('readonly', true);
        $('#cod123').css('background-color', '#ededed');
        $('#cod123').val('0');
    
        $('#cod102').attr('readonly', true);
        $('#cod102').css('background-color', '#ededed');
        $('#cod102').val('0');
    
        $('#cod645').attr('readonly', true);
        $('#cod645').css('background-color', '#ededed');
        $('#cod645').val('0');
    
        $('#cod893').attr('readonly', true);
        $('#cod893').css('background-color', '#ededed');
        $('#cod893').val('0');
    
        $('#cod894').attr('readonly', true);
        $('#cod894').css('background-color', '#ededed');
        $('#cod894').val('0');
    
        $('#cod646').attr('readonly', true);
        $('#cod646').css('background-color', '#ededed');
        $('#cod646').val('0');
    
        $('#cod843').attr('readonly', true);
        $('#cod843').css('background-color', '#ededed');
        $('#cod843').val('0');
    
        $('#cod844').attr('readonly', true);
        $('#cod844').css('background-color', '#ededed');
        $('#cod844').val('0');
    
        $('#cod940').attr('readonly', true);
        $('#cod940').css('background-color', '#ededed');
        $('#cod940').val('0');


        $('#cod942').attr('readonly', true);
        $('#cod942').css('background-color', '#ededed');
        $('#cod942').val('0');
    
        $('#cod938').attr('readonly', true);
        $('#cod938').css('background-color', '#ededed');
        $('#cod938').val('0');
    
        $('#cod950').attr('readonly', true);
        $('#cod950').css('background-color', '#ededed');
        $('#cod950').val('0');
    
        $('#cod949').attr('readonly', true);
        $('#cod949').css('background-color', '#ededed');
        $('#cod949').val('0');
    
        $('#cod932').attr('readonly', true);
        $('#cod932').css('background-color', '#ededed');
        $('#cod932').val('0');

    
        $('#cod933').attr('readonly', true);
        $('#cod933').css('background-color', '#ededed');
        $('#cod933').val('0');
    
        $('#cod934').attr('readonly', true);
        $('#cod934').css('background-color', '#ededed');
        $('#cod934').val('0');
    
        $('#cod935').attr('readonly', true);
        $('#cod935').css('background-color', '#ededed');
        $('#cod935').val('0');
    
        $('#cod939').attr('readonly', true);
        $('#cod939').css('background-color', '#ededed');
        $('#cod939').val('0');
    
        $('#cod977').attr('readonly', true);
        $('#cod977').css('background-color', '#ededed');
        $('#cod977').val('0');

    
        $('#cod978').attr('readonly', true);
        $('#cod978').css('background-color', '#ededed');
        $('#cod978').val('0');

    
        $('#cod1003').attr('readonly', true);
        $('#cod1003').css('background-color', '#ededed');
        $('#cod1003').val('0');

    
        $('#cod1004').attr('readonly', true);
        $('#cod1004').css('background-color', '#ededed');
        $('#cod1004').val('0');

    
        $('#cod1005').attr('readonly', true);
        $('#cod1005').css('background-color', '#ededed');
        $('#cod1005').val('0');

    
 

    }



    function enabled_rec6() {


        $('#cod979').attr('readonly', false);
        $('#cod979').css('background-color', '#ffffff');

        $('#cod224').attr('readonly', false);
        $('#cod224').css('background-color', '#ffffff');
  

        $('#cod774').attr('readonly', false);
        $('#cod774').css('background-color', '#ffffff');
   
        $('#cod775').attr('readonly', false);
        $('#cod775').css('background-color', '#ffffff');

        $('#cod284').attr('readonly', false);
        $('#cod284').css('background-color', '#ffffff');

        $('#cod225').attr('readonly', false);
        $('#cod225').css('background-color', '#ffffff');

        $('#cod883').attr('readonly', false);
        $('#cod883').css('background-color', '#ffffff');

        $('#cod229').attr('readonly', false);
        $('#cod229').css('background-color', '#ffffff');

        $('#cod931').attr('readonly', false);
        $('#cod931').css('background-color', '#ffffff');

        $('#cod624').attr('readonly', false);
        $('#cod624').css('background-color', '#ffffff');

        $('#cod227').attr('readonly', false);
        $('#cod227').css('background-color', '#ffffff');

        $('#cod776').attr('readonly', false);
        $('#cod776').css('background-color', '#ffffff');

        $('#cod777').attr('readonly', false);
        $('#cod777').css('background-color', '#ffffff');

        $('#cod782').attr('readonly', false);
        $('#cod782').css('background-color', '#ffffff');

        $('#cod835').attr('readonly', false);
        $('#cod835').css('background-color', '#ffffff');

        $('#cod791').attr('readonly', false);
        $('#cod791').css('background-color', '#ffffff');

        $('#cod889').attr('readonly', false);
        $('#cod889').css('background-color', '#ffffff');

        $('#cod275').attr('readonly', false);
        $('#cod275').css('background-color', '#ffffff');

        $('#cod226').attr('readonly', false);
        $('#cod226').css('background-color', '#ffffff');

        $('#cod231').attr('readonly', false);
        $('#cod231').css('background-color', '#ffffff');

        $('#cod318').attr('readonly', false);
        $('#cod318').css('background-color', '#ffffff');

        $('#cod232').attr('readonly', false);
        $('#cod232').css('background-color', '#ffffff');

        $('#cod625').attr('readonly', false);
        $('#cod625').css('background-color', '#ffffff');

        $('#cod626').attr('readonly', false);
        $('#cod626').css('background-color', '#ffffff');

        $('#cod627').attr('readonly', false);
        $('#cod627').css('background-color', '#ffffff');

        $('#cod904').attr('readonly', false);
        $('#cod904').css('background-color', '#ffffff');

        $('#cod838').attr('readonly', false);
        $('#cod838').css('background-color', '#ffffff');

        $('#cod845').attr('readonly', false);
        $('#cod845').css('background-color', '#ffffff');

        $('#cod818').attr('readonly', false);
        $('#cod818').css('background-color', '#ffffff');

        $('#cod842').attr('readonly', false);
        $('#cod842').css('background-color', '#ffffff');

        $('#cod819').attr('readonly', false);
        $('#cod819').css('background-color', '#ffffff');

        $('#cod837').attr('readonly', false);
        $('#cod837').css('background-color', '#ffffff');

        $('#cod820').attr('readonly', false);
        $('#cod820').css('background-color', '#ffffff');

        $('#cod228').attr('readonly', false);
        $('#cod228').css('background-color', '#ffffff');

        $('#cod840').attr('readonly', false);
        $('#cod840').css('background-color', '#ffffff');

        $('#cod836').attr('readonly', false);
        $('#cod836').css('background-color', '#ffffff');

        $('#cod320').attr('readonly', false);
        $('#cod320').css('background-color', '#ffffff');

        $('#cod828').attr('readonly', false);
        $('#cod828').css('background-color', '#ffffff');

        $('#cod830').attr('readonly', false);
        $('#cod830').css('background-color', '#ffffff');

        $('#cod829').attr('readonly', false);
        $('#cod829').css('background-color', '#ffffff');

    }

    function disabled_rec6() {


        $('#cod979').attr('readonly', true);
        $('#cod979').css('background-color', '#ededed');
        $('#cod979').val('0');

        $('#cod224').attr('readonly', true);
        $('#cod224').css('background-color', '#ededed');
        $('#cod224').val('0');

        $('#cod774').attr('readonly', true);
        $('#cod774').css('background-color', '#ededed');
        $('#cod774').val('0');

        $('#cod775').attr('readonly', true);
        $('#cod775').css('background-color', '#ededed');
        $('#cod775').val('0');

        $('#cod284').attr('readonly', true);
        $('#cod284').css('background-color', '#ededed');
        $('#cod284').val('0');

        $('#cod225').attr('readonly', true);
        $('#cod225').css('background-color', '#ededed');
        $('#cod225').val('0');

        $('#cod883').attr('readonly', true);
        $('#cod883').css('background-color', '#ededed');
        $('#cod883').val('0');

        $('#cod229').attr('readonly', true);
        $('#cod229').css('background-color', '#ededed');
        $('#cod229').val('0');

        $('#cod931').attr('readonly', true);
        $('#cod931').css('background-color', '#ededed');
        $('#cod931').val('0');
    
        $('#cod624').attr('readonly', true);
        $('#cod624').css('background-color', '#ededed');
        $('#cod624').val('0');

        $('#cod227').attr('readonly', true);
        $('#cod227').css('background-color', '#ededed');
        $('#cod227').val('0');

        $('#cod776').attr('readonly', true);
        $('#cod776').css('background-color', '#ededed');
        $('#cod776').val('0');

        $('#cod777').attr('readonly', true);
        $('#cod777').css('background-color', '#ededed');
        $('#cod777').val('0');

        $('#cod782').attr('readonly', true);
        $('#cod782').css('background-color', '#ededed');
        $('#cod782').val('0');

        $('#cod835').attr('readonly', true);
        $('#cod835').css('background-color', '#ededed');
        $('#cod835').val('0');
    
        $('#cod791').attr('readonly', true);
        $('#cod791').css('background-color', '#ededed');
        $('#cod791').val('0');

        $('#cod889').attr('readonly', true);
        $('#cod889').css('background-color', '#ededed');
        $('#cod889').val('0');

        $('#cod275').attr('readonly', true);
        $('#cod275').css('background-color', '#ededed');
        $('#cod275').val('0');

        $('#cod226').attr('readonly', true);
        $('#cod226').css('background-color', '#ededed');
        $('#cod226').val('0');

        $('#cod231').attr('readonly', true);
        $('#cod231').css('background-color', '#ededed');
        $('#cod231').val('0');

        $('#cod318').attr('readonly', true);
        $('#cod318').css('background-color', '#ededed');
        $('#cod318').val('0');
    
        $('#cod232').attr('readonly', true);
        $('#cod232').css('background-color', '#ededed');
        $('#cod232').val('0');

        $('#cod625').attr('readonly', true);
        $('#cod625').css('background-color', '#ededed');
        $('#cod625').val('0');

        $('#cod626').attr('readonly', true);
        $('#cod626').css('background-color', '#ededed');
        $('#cod626').val('0');

        $('#cod627').attr('readonly', true);
        $('#cod627').css('background-color', '#ededed');
        $('#cod627').val('0');

        $('#cod904').attr('readonly', true);
        $('#cod904').css('background-color', '#ededed');
        $('#cod904').val('0');

        $('#cod838').attr('readonly', true);
        $('#cod838').css('background-color', '#ededed');
        $('#cod838').val('0');

        $('#cod845').attr('readonly', true);
        $('#cod845').css('background-color', '#ededed');
        $('#cod845').val('0');

        $('#cod818').attr('readonly', true);
        $('#cod818').css('background-color', '#ededed');
        $('#cod818').val('0');

        $('#cod842').attr('readonly', true);
        $('#cod842').css('background-color', '#ededed');
        $('#cod842').val('0');

        $('#cod819').attr('readonly', true);
        $('#cod819').css('background-color', '#ededed');
        $('#cod819').val('0');

        $('#cod837').attr('readonly', true);
        $('#cod837').css('background-color', '#ededed');
        $('#cod837').val('0');

        $('#cod820').attr('readonly', true);
        $('#cod820').css('background-color', '#ededed');
        $('#cod820').val('0');

        $('#cod228').attr('readonly', true);
        $('#cod228').css('background-color', '#ededed');
        $('#cod228').val('0');

        $('#cod840').attr('readonly', true);
        $('#cod840').css('background-color', '#ededed');
        $('#cod840').val('0');

        $('#cod836').attr('readonly', true);
        $('#cod836').css('background-color', '#ededed');
        $('#cod836').val('0');
   
        $('#cod320').attr('readonly', true);
        $('#cod320').css('background-color', '#ededed');
        $('#cod320').val('0');
    
        $('#cod828').attr('readonly', true);
        $('#cod828').css('background-color', '#ededed');
        $('#cod828').val('0');
    
        $('#cod830').attr('readonly', true);
        $('#cod830').css('background-color', '#ededed');
        $('#cod830').val('0');
    
        $('#cod829').attr('readonly', true);
        $('#cod829').css('background-color', '#ededed');
        $('#cod829').val('0');
    
    }

    function crear_contrib() {
        $('#fade').fadeIn('1000');
        $('#crear_contribuyente').fadeIn('2000');
    
        //dejamos en blanco los campos del ingreso

        $('#rut_cont').val('');
        $('#dv_cont').val('');
        $('#razon_social').val('');
        $('#ap_materno').val('');
        $('#nombres').val('');
        $('#calle').val('');
        $('#numero').val('');
        $('#depto').val('');
        $('#mail').val('');
        $('#telefono').val('');
        $('#rut_contador').val('');
        $('#dv_contador').val('');
        $('#rut_representante').val('');
        $('#dv_representante').val('');
        $('#nro_cta').val('');
    
   
   
    }

    function cerrar_ayuda() {
        $('#help1').hide();
    }

    function llenar_nombre_act() {
        var cod = $('#cod_act_econ').val();
        $('#nom_act').val(cod);
    }

    function traer_actividades() {
        // var actionData = "{'nombre': '" + nombre + "','apellido': '" + apellido + "'}";
           
        $.ajax(
        {
            url: "default.aspx/traerAct",
            // data: actionData,
            dataType: "json",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            success: function (msg) {
                $('#cod_act_econ').html(msg.d);
                llenar_nombre_act();
            },
            error: function(result) {
                alert("ERROR " + result.status + ' ' + result.statusText);
            }
        });        
    }

    function traer_bancos() {
        $.ajax(
       {
           url: "default.aspx/traerBcos",
           // data: actionData,
           dataType: "json",
           type: "POST",
           contentType: "application/json; charset=utf-8",
           success: function (msg) {
               $('#bancos').html(msg.d);
          
           },
           error: function (result) {
               alert("ERROR " + result.status + ' ' + result.statusText);
           }
       });

    }


    function cargar_contribuyentes_sinf22(at) {
        var grupo = $('#grupo').text();
        //var perfil = $('#perfil').text();
        var actionData = "{'grupo': '" + grupo + "','at': '" + at + "'}";
        $.ajax(
     {

         url: "default.aspx/cargarContribuyentesSinF22",
         data: actionData,
         dataType: "json",
         type: "POST",
         contentType: "application/json; charset=utf-8",
         success: function (msg) {
             $('#contribuyentes').html(msg.d);

         },
         error: function (result) {
             alert("ERROR " + result.status + ' ' + result.statusText);
         }
     });
    }

    function traer_aprobadores() {
        var grupo = $('#grupo').text();
        var actionData = "{'grupo': '" + grupo + "'}";
        $.ajax(
     {

         url: "default.aspx/traerAprobadores",
         data: actionData,
         dataType: "json",
         type: "POST",
         contentType: "application/json; charset=utf-8",
         success: function (msg) {
             $('#aprobadores').html(msg.d);

         },
         error: function (result) {
             alert("ERROR " + result.status + ' ' + result.statusText);
         }
     });
    }

    function traer_revisores() {
        var grupo = $('#grupo').text();
        var actionData = "{'grupo': '" + grupo + "'}";
        $.ajax(
     {

         url: "default.aspx/traerRevisores",
         data: actionData,
         dataType: "json",
         type: "POST",
         contentType: "application/json; charset=utf-8",
         success: function (msg) {
             $('#revisores').html(msg.d);

         },
         error: function (result) {
             alert("ERROR " + result.status + ' ' + result.statusText);
         }
     });
    }

    function llenar_comunas() {
        var cod = $('#region').val();
        var actionData = "{'codigo': '" + cod + "'}"; 
        $.ajax(
       {
           url: "default.aspx/llenarComuna",
           data: actionData,
           dataType: "json",
           type: "POST",
           contentType: "application/json; charset=utf-8",
           success: function (msg) { $('#comuna').html(msg.d); },
           error: function (result) {
               alert("ERROR " + result.status + ' ' + result.statusText);
           }
       });
    }

    function traer_regiones() {
        $.ajax(
       {
           url: "default.aspx/traerReg",
           // data: actionData,
           dataType: "json",
           type: "POST",
           contentType: "application/json; charset=utf-8",
           success: function (msg) {
               $('#region').html(msg.d);
               llenar_comunas();
           },
           error: function (result) {
               alert("ERROR " + result.status + ' ' + result.statusText);
           }
       });
    }

    function cerrar_crear() {
        $('#crear_contribuyente').fadeOut('fast');
        $('#fade').fadeOut('fast');
        $('#crear_f22').fadeOut('fast');
        $('#upload_balances').fadeOut('fast');
        $('#body_intro_f22').fadeIn();

    }

    function cerrar_pantalla() {
        $('#pantalla').fadeOut('fast');
        $('#fade').fadeOut('fast');

    }

    function cerrar_validaciones() {
        $('#validaciones').fadeOut('fast');
        $('#fade_validaciones').fadeOut('fast');

    }


    function validar_mail() {
        if ($("#mail").val().indexOf('@', 0) == -1 || $("#mail").val().indexOf('.', 0) == -1) {
            $("#mail_correcto").text('0');
            alert('mail ingresado es incorrecto');
        }
        else {
            $("#mail_correcto").text('1');
        }
    }

    function crear_contribuyente() {

        var rut_cont = $('#rut_cont').val();
        var razon_social = $('#razon_social').val();
        var ap_materno = $('#ap_materno').val();
        var nombres = $('#nombres').val();
        var cod_act_econ = $("#cod_act_econ option:selected").text();
        var nom_act = $('#nom_act').val();
        var calle = $('#calle').val();
        var numero = $('#numero').val();
        var depto = $('#depto').val();
        var region = $('#region').val();
        var comuna = $('#comuna').val();
        var mail = $('#mail').val();
        var telefono = $('#telefono').val();
        var bancos = $('#bancos').val();
        var tpo_cuenta = $('#tpo_cuenta').val();
        var nro_cta = $('#nro_cta').val();
        var perfil_cont = $('#perfil_cont').val();
        var rut_contador = $('#rut_contador').val();
        var rut_representante = $('#rut_representante').val();
        //var revisores = $('#revisores').val();
        //var aprobadores = $('#aprobadores').val();
        var forma_pago = $('#forma_pago').val();
        var soc_prof = $('#soc_prof').val();
        var id_user = $('#id_user').text();
        var grupo = $('#grupo').text();

    
   

        //**********aca validar datos a enviar!!!!

        var validos = true;
        var rut_correcto =  $("#rut_correcto").text();
        if (rut_cont.length == 0 || razon_social.length == 0 || ap_materno.length == 0 || nombres.length == 0 || cod_act_econ.length == 0 || nom_act.length == 0 || calle.length == 0 || numero.length == 0 || depto.length == 0 || region.length == 0 || comuna.length == 0 || mail.length == 0 || telefono.length == 0 || bancos.length == 0 || tpo_cuenta.length == 0 || nro_cta.length == 0 || perfil_cont.length == 0 || rut_contador.length == 0 || rut_representante.length == 0 ||  forma_pago.length == 0 || soc_prof.length == 0 || id_user.length == 0 || grupo.length == 0 || rut_correcto == 0 || mail_correcto == 0) {
            validos = false;
        }
        else {

        }


        if (validos == true) {
            $('#fade').fadeIn();
            $('#light').fadeIn();
            var actionData = "{'grupo': '" + grupo + "','id_user': '" + id_user + "','rut_cont': '" + rut_cont + "','razon_social': '" + razon_social + "','ap_materno': '" + ap_materno + "','nombres': '" + nombres + "','cod_act_econ': '" + cod_act_econ + "','nom_act': '" + nom_act + "','calle': '" + calle + "','numero': '" + numero + "','depto': '" + depto + "','region': '" + region + "','comuna': '" + comuna + "','mail': '" + mail + "','telefono': '" + telefono + "','bancos': '" + bancos + "','tpo_cuenta': '" + tpo_cuenta + "','nro_cta': '" + nro_cta + "','perfil_cont': '" + perfil_cont + "','rut_contador': '" + rut_contador + "','rut_representante': '" + rut_representante + "','forma_pago': '" + forma_pago + "','soc_prof': '" + soc_prof + "'}";
            $.ajax(
           {
               url: "default.aspx/Crear_contribuyente",
               data: actionData,
               dataType: "json",
               type: "POST",
               contentType: "application/json; charset=utf-8",
               success: function (msg) {


                   if (msg.d != 0) {
                       $('#msj_lightbox').html('Creando');
                       setTimeout(function () {
                           swal({
                               title: "Contribuyente Creado exitosamente",
                               text: "Desea ingresar balances?",
                               type: "warning",
                               showCancelButton: true,
                               confirmButtonColor: "#DD6B55",
                               confirmButtonText: "Sí"
                               },
                                function () {
                                    abrir_cargador_excel();
                                    
                                });

                           $('#crear_contribuyente').fadeOut();
                           $('#fade').fadeOut();
                           $('#light').fadeOut();

                       }, 3000);

                   }
                   else {
                       sweetAlert("Error", "Ocurrió un error al crear el contribuyente", "error");
                       $('#fade').fadeOut();
                       $('#light').fadeOut();
                   }
               },
               error: function (result) {
                   alert("ERROR " + result.status + ' ' + result.statusText);
               }
           });
        }
            //*************fin validaciones*************
        else {
            sweetAlert("Error", "No debe dejar campos vacios", "error");
        }
    
    }
    

    function abrir_cargador_excel() {
        $('#body_intro_f22').fadeOut();
        $('#fade').fadeIn();
        $('#upload_balances').fadeIn();
    }

    function abrir_pantalla(nro) {

        $('#fade').fadeIn('slow');
        $('#pantalla').fadeIn('slow');

    }

    function validar() {

        $('#fade_validaciones').fadeIn('slow');
        $('#validando').fadeIn('slow');  
        setTimeout(function () {
            //validar anverso y reverso
            guardar_reverso();
            validar_reverso();
            $('#validando').fadeOut();
        
        }, 3000);
    }




    function anverso_reverso(nro) {
        if (nro == 1) {
            $('#anverso').fadeOut('slow');
            $('#reverso').fadeIn('fast');
            $('#ir_reverso').hide();
            $('#ir_anverso').show();
        }
        if (nro==2) {
            $('#reverso').fadeOut('fast');
            $('#anverso').fadeIn('slow');
            $('#ir_anverso').hide();
            $('#ir_reverso').show();
        }

    }

    //funcion que hace foco en el codigo
    function ir(seccion) {
        $('html,body').animate({
            scrollTop: $("#"+seccion).offset().top
        }, 2000);
    }


    function help(nro) {

        if (nro == 1) {
            $('#help1').slideDown(4000);
            $('#help2').slideDown("fast");
        }


        if (nro == 2) {
            $('#help2').slideToggle();
            $('#help1').slideDown("slow");
        }

        if (nro == 3) {

            setTimeout(function () {

                $('#help2').slideToggle();
                $('#help1').slideDown("slow");
                $('#areatexto').val("");
            }, 1000);
        
            alert("Tu mensaje fué enviado correctamente, el códido de seguimiento es :34123");
      
        }

    }

    function cerrarLightboxHome() {
        $("#fade").fadeOut("fast", function () {
            $("#over").fadeOut("slow", function () {
                $("#titulo").fadeIn(2000, function () {
                    // $("#login").fadeIn(3000, function () {
                    // Animation complete
                    //});
                });
            });
        });
    }

    function over(nro){

        if (nro == 3) {
        
            $('#btn_login').css('color', '#012169');
            $('#btn_login').css('background-color', '#fff');
        }

        if (nro == 4) {
            $('#btn_login').css('color', '#fff');
            $('#btn_login').css('background-color', '#012169');
        }

   
    }


    function reset(nro) {
        if (nro == 5) {
            $('#ver_eval').css('color', '#004a94');

        }

        if (nro == 6) {
            $('#ingresar_eval').css('color', '#004a94');

        }

    }


    function login() {
        $('#caja-central-home').css('top', '70px');
        $('#ingreso').hide();
        $('#login').show();
    }


    function reset_border(nro) {
        if (nro==1) {
            $('#username').css('border', '0');
        }

        if (nro == 2) {
            $('#pass').css('border', '0');
        }
   
    }


    function sesion() {

        window.location.href = "home.aspx";
    }








    //funcion que valida solo numeros

    function numeros(e) { 

        tecla = (document.all) ? e.keyCode : e.which; // 2

        if (tecla==8) return true; // 3

        patron = /\d/; // 4

        te = String.fromCharCode(tecla); // 5

        return patron.test(te); // 6



    }




    //calculo codigos REVERSO

    function calculo547() {
        var c545 = 0;
        var c461 = 0;
        var c856 = 0;

        if ($('#cod461').val().trim() != "") {
            c461 = $('#cod461').val().trim();
            c461 = ((c461).replace(/\./g, ''));
        }
        if ($('#cod545').val().trim() != "") {
            c545 = $('#cod545').val().trim();
            c545 = ((c545).replace(/\./g, ''));
        }
        if ($('#cod856').val().trim() != "") {
            c856 = $('#cod856').val().trim();
            c856 = ((c856).replace(/\./g, ''));
        }
    
    
    
        var calc547 = parseInt(c545) + parseInt(c461) + parseInt(c856);
        calc547 =  formatearCodigo(calc547);
        $('#cod547').val(calc547);
        //calculamos cod 467
        calculo467();
    }


    function calculo467() {
        var c547 = 0;
        var c617 = 0;
        var c770 = 0;
        var c872 = 0;
        var c465 = 0;
        var c494 = 0;
        var c850 = 0;

        if ($('#cod547').val().trim() != "") {
            c547 = $('#cod547').val().trim();
            c547 = ((c547).replace(/\./g, ''));
        }
        if ($('#cod617').val().trim() != "") {
            c617 = $('#cod617').val().trim();
            c617 = ((c617).replace(/\./g, ''));
        }
        if ($('#cod770').val().trim() != "") {
            c770 = $('#cod770').val().trim();
            c770 = ((c770).replace(/\./g, ''));
        }
        if ($('#cod872').val().trim() != "") {
            c872 = $('#cod872').val().trim();
            c872 = ((c872).replace(/\./g, ''));
        }
        if ($('#cod465').val().trim() != "") {
            c465 = $('#cod465').val().trim();
            c465 = ((c465).replace(/\./g, ''));
        }
        if ($('#cod494').val().trim() != "") {
            c494 = $('#cod494').val().trim();
            c494 = ((c494).replace(/\./g, ''));
        }
        if ($('#cod850').val().trim() != "") {
            c850 = $('#cod850').val().trim();
            c850 = ((c850).replace(/\./g, ''));
        }
   



        var calc467 = parseInt(c547) + parseInt(c617) - parseInt(c770) - parseInt(c872) - parseInt(c465) - parseInt(c494) - parseInt(c850);
        calc467 = formatearCodigoNegativo(calc467);
        $('#cod467').val(calc467);
        //calculamos codigo 618
        calculo618();
    }



    function calculo618() {
        var c467 = 0;
        var c479 = 0;
    
        if ($('#cod467').val().trim() != "") {
            c467 = $('#cod467').val().trim();
            c467 = ((c467).replace(/\./g, ''));
        }
        if ($('#cod479').val().trim() != "") {
            c479 = $('#cod479').val().trim();
            c479 = ((c479).replace(/\./g, ''));
        }
    
        var calc618 = parseInt(c467) + parseInt(c479);
        calc618 = formatearCodigo(calc618);
        $('#cod618').val(calc618);
    }


    function calculo619() {
        var c492 = 0;
        var c491 = 0;

        if ($('#cod492').val().trim() != "") {
            c492 = $('#cod492').val().trim();
            c492 = ((c492).replace(/\./g, ''));
        }
        if ($('#cod491').val().trim() != "") {
            c491 = $('#cod491').val().trim();
            c491 = ((c491).replace(/\./g, ''));
        }

        var calc619 = parseInt(c492) + parseInt(c491);
        calc619 = formatearCodigo(calc619);
        $('#cod619').val(calc619);
    }


    function calculo636() {
        var c628 = 0;
        var c851 = 0;
        var c629 = 0;
        var c651 = 0;
        var c630 = 0;
        var c631 = 0;
        var c632 = 0;
        var c633 = 0;
        var c966 = 0;
        var c967 = 0;
        var c852 = 0;
        var c897 = 0;
        var c853 = 0;
        var c941 = 0;
        var c968 = 0;
        var c969 = 0;
        var c635 = 0;

        if ($('#cod628').val().trim() != "") {
            c628 = $('#cod628').val().trim();
            c628 = ((c628).replace(/\./g, ''));
        }
        if ($('#cod851').val().trim() != "") {
            c851 = $('#cod851').val().trim();
            c851 = ((c851).replace(/\./g, ''));
        }
        if ($('#cod629').val().trim() != "") {
            c629 = $('#cod629').val().trim();
            c629 = ((c629).replace(/\./g, ''));
        }
        if ($('#cod651').val().trim() != "") {
            c651 = $('#cod651').val().trim();
            c651 = ((c651).replace(/\./g, ''));
        }
        if ($('#cod630').val().trim() != "") {
            c630 = $('#cod630').val().trim();
            c630 = ((c630).replace(/\./g, ''));
        }
        if ($('#cod631').val().trim() != "") {
            c631 = $('#cod631').val().trim();
            c631 = ((c631).replace(/\./g, ''));
        }
        if ($('#cod632').val().trim() != "") {
            c632 = $('#cod632').val().trim();
            c632 = ((c632).replace(/\./g, ''));
        }
        if ($('#cod633').val().trim() != "") {
            c633 = $('#cod633').val().trim();
            c633 = ((c633).replace(/\./g, ''));
        }
        if ($('#cod966').val().trim() != "") {
            c966 = $('#cod966').val().trim();
            c966 = ((c966).replace(/\./g, ''));
        }
        if ($('#cod967').val().trim() != "") {
            c967 = $('#cod967').val().trim();
            c967 = ((c967).replace(/\./g, ''));
        }
        if ($('#cod852').val().trim() != "") {
            c852 = $('#cod852').val().trim();
            c852 = ((c852).replace(/\./g, ''));
        }
        if ($('#cod897').val().trim() != "") {
            c897 = $('#cod897').val().trim();
            c897 = ((c897).replace(/\./g, ''));
        }
        if ($('#cod853').val().trim() != "") {
            c853 = $('#cod853').val().trim();
            c853 = ((c853).replace(/\./g, ''));
        }
        if ($('#cod941').val().trim() != "") {
            c941 = $('#cod941').val().trim();
            c941 = ((c941).replace(/\./g, ''));
        }
        if ($('#cod968').val().trim() != "") {
            c968 = $('#cod968').val().trim();
            c968 = ((c968).replace(/\./g, ''));
        }
        if ($('#cod969').val().trim() != "") {
            c969 = $('#cod969').val().trim();
            c969 = ((c969).replace(/\./g, ''));
        }
        if ($('#cod635').val().trim() != "") {
            c635 = $('#cod635').val().trim();
            c635 = ((c635).replace(/\./g, ''));
        }

        var calc636 = parseInt(c628) + parseInt(c851) + parseInt(c629) + parseInt(c651) - parseInt(c630) - parseInt(c631) - parseInt(c632) - parseInt(c633) - parseInt(c966) - parseInt(c967) - parseInt(c852) - parseInt(c897) - parseInt(c853) - parseInt(c941) - parseInt(c968) - parseInt(c969) - parseInt(c635);
        calc636 = formatearCodigoNegativo(calc636);
        $('#cod636').val(calc636);
    }



    function calculo972() {
        var c637 = 0;
        var c638 = 0;
        var c926 = 0;
        var c927 = 0;
        var c970 = 0;
        var c971 = 0;
        var c639 = 0;
        var c1000 = 0;
        var c827 = 0;
        var c634 = 0;
        var c928 = 0;
        var c929 = 0;
        var c640 = 0;
        var c807 = 0;
        var c641 = 0;
        var c642 = 0;
    

        if ($('#cod637').val().trim() != "") {
            c637 = $('#cod637').val().trim();
            c637 = ((c637).replace(/\./g, ''));
        }

        if ($('#cod638').val().trim() != "") {
            c638 = $('#cod638').val().trim();
            c638 = ((c638).replace(/\./g, ''));
        }

   
        if ($('#cod926').val().trim() != "") {
            c926 = $('#cod926').val().trim();
            c926 = ((c926).replace(/\./g, ''));
        }

        if ($('#cod927').val().trim() != "") {
            c927 = $('#cod927').val().trim();
            c927 = ((c927).replace(/\./g, ''));
        }

        if ($('#cod970').val().trim() != "") {
            c970 = $('#cod970').val().trim();
            c970 = ((c970).replace(/\./g, ''));
        }

        if ($('#cod971').val().trim() != "") {
            c971 = $('#cod971').val().trim();
            c971 = ((c971).replace(/\./g, ''));
        }

        if ($('#cod639').val().trim() != "") {
            c639 = $('#cod639').val().trim();
            c639 = ((c639).replace(/\./g, ''));
        }

        if ($('#cod1000').val().trim() != "") {
            c1000 = $('#cod1000').val().trim();
            c1000 = ((c1000).replace(/\./g, ''));
        }

        if ($('#cod827').val().trim() != "") {
            c827 = $('#cod827').val().trim();
            c827 = ((c827).replace(/\./g, ''));
        }

        if ($('#cod634').val().trim() != "") {
            c634 = $('#cod634').val().trim();
            c634 = ((c634).replace(/\./g, ''));
        }

        if ($('#cod928').val().trim() != "") {
            c928 = $('#cod928').val().trim();
            c928 = ((c928).replace(/\./g, ''));
        }

        if ($('#cod929').val().trim() != "") {
            c929 = $('#cod929').val().trim();
            c929 = ((c929).replace(/\./g, ''));
        }

        if ($('#cod640').val().trim() != "") {
            c640 = $('#cod640').val().trim();
            c640 = ((c640).replace(/\./g, ''));
        }

        if ($('#cod807').val().trim() != "") {
            c807 = $('#cod807').val().trim();
            c807 = ((c807).replace(/\./g, ''));
        }

        if ($('#cod641').val().trim() != "") {
            c641 = $('#cod641').val().trim();
            c641 = ((c641).replace(/\./g, ''));
        }

        if ($('#cod642').val().trim() != "") {
            c642 = $('#cod642').val().trim();
            c642 = ((c642).replace(/\./g, ''));
        }


   

        var calc972 = parseInt(c638) - parseInt(c637) + parseInt(c926) - parseInt(c927) + parseInt(c970) + parseInt(c971) + parseInt(c639) - parseInt(c1000) - parseInt(c827) - parseInt(c634) - parseInt(c928) - parseInt(c929) - parseInt(c640) - parseInt(c807) - parseInt(c641) - parseInt(c642);
        calc972 = formatearCodigo(calc972);
        $('#cod972').val(calc972);
        calculo643();
    }





    function calculo643() {
        var c972 = 0;
        var c973 = 0;
        var c868 = 0;
    
        if ($('#cod972').val().trim() != "") {
            c972 = $('#cod972').val().trim();
            c972 = ((c972).replace(/\./g, ''));
        }
        if ($('#cod973').val().trim() != "") {
            c973 = $('#cod973').val().trim();
            c973 = ((c973).replace(/\./g, ''));
        }
        if ($('#cod868').val().trim() != "") {
            c868 = $('#cod868').val().trim();
            c868 = ((c868).replace(/\./g, ''));
        }
   

        var calc643 = parseInt(c972) - parseInt(c973) - parseInt(c868) ;
        calc643 = formatearCodigoNegativo(calc643);
        $('#cod643').val(calc643);
    }



    function calculo703() {
        var c701 = 0;
        var c702 = 0;
    

        if ($('#cod701').val().trim() != "") {
            c701 = $('#cod701').val().trim();
            c701 = ((c701).replace(/\./g, ''));
        }
        if ($('#cod702').val().trim() != "") {
            c702 = $('#cod702').val().trim();
            c702 = ((c702).replace(/\./g, ''));
        }
   


        var calc703 = parseInt(c701) - parseInt(c702);
        calc703 = formatearCodigo(calc703);
        $('#cod703').val(calc703);
    }


    function calculo228() {
        var c818 = 0;
        var c842 = 0;
        var c980 = 0;
        var c981 = 0;
        var c819 = 0;
        var c837 = 0;
        var c820 = 0;


        if ($('#cod818').val().trim() != "") {
            c818 = $('#cod818').val().trim();
            c818 = ((c818).replace(/\./g, ''));
        }

        if ($('#cod842').val().trim() != "") {
            c842 = $('#cod842').val().trim();
            c842 = ((c842).replace(/\./g, ''));
        }

        if ($('#cod980').val().trim() != "") {
            c980 = $('#cod980').val().trim();
            c980 = ((c980).replace(/\./g, ''));
        }

        if ($('#cod981').val().trim() != "") {
            c981 = $('#cod981').val().trim();
            c981 = ((c981).replace(/\./g, ''));
        }

        if ($('#cod819').val().trim() != "") {
            c819 = $('#cod819').val().trim();
            c819 = ((c819).replace(/\./g, ''));
        }

        if ($('#cod837').val().trim() != "") {
            c837 = $('#cod837').val().trim();
            c837 = ((c837).replace(/\./g, ''));
        }

        if ($('#cod820').val().trim() != "") {
            c820 = $('#cod820').val().trim();
            c820 = ((c820).replace(/\./g, ''));
        }
    



        var calc228 = parseInt(c818) - parseInt(c842) + parseInt(c980) - parseInt(c981) + parseInt(c819) - parseInt(c837) - parseInt(c820);
        if (calc228 < 0) {
            calc228 = formatearCodigoNegativo(calc228);
            $('#cod840').val(calc228);
        }
        else {
            calc228 = formatearCodigo(calc228);
            $('#cod228').val(calc228);
            $('#cod840').val('0');
        }
   
    }


    function calculo829() {
        var c828 = 0;
        var c830 = 0;


        if ($('#cod828').val().trim() != "") {
            c828 = $('#cod828').val().trim();
            c828 = ((c828).replace(/\./g, ''));
        }
        if ($('#cod830').val().trim() != "") {
            c830 = $('#cod830').val().trim();
            c830 = ((c830).replace(/\./g, ''));
        }



        var calc829 = parseInt(c828) - parseInt(c830);
        calc829 = formatearCodigo(calc829);
        $('#cod829').val(calc829);
    }


    function calculo927() {
        var c785 = 0;
        var c950 = 0;
        var c938 = 0;
        var c942 = 0;
        var c949 = 0;
    
    


        if ($('#cod785').val().trim() != "") {
            c785 = $('#cod785').val().trim();
            c785 = ((c785).replace(/\./g, ''));
        }
        if ($('#cod950').val().trim() != "") {
            c950 = $('#cod950').val().trim();
            c950 = ((c950).replace(/\./g, ''));
        }
        if ($('#cod938').val().trim() != "") {
            c938 = $('#cod938').val().trim();
            c938 = ((c938).replace(/\./g, ''));
        }
        if ($('#cod942').val().trim() != "") {
            c942 = $('#cod942').val().trim();
            c942 = ((c942).replace(/\./g, ''));
        }
        if ($('#cod949').val().trim() != "") {
            c949 = $('#cod949').val().trim();
            c949 = ((c949).replace(/\./g, ''));
        }
   



        var calc927 = parseInt(c785) - parseInt(c950) + parseInt(c938) + parseInt(c942) + parseInt(c949);
        calc927 = formatearCodigo(calc927);
        $('#cod927').val(calc927);
        calculo972();
    }




    function calculo953() {
        var c999 = 0;
        var c998 = 0;
    

        if ($('#cod999').val().trim() != "") {
            c999 = $('#cod999').val().trim();
            c999 = ((c999).replace(/\./g, ''));
        }
        if ($('#cod998').val().trim() != "") {
            c998 = $('#cod998').val().trim();
            c998 = ((c998).replace(/\./g, ''));
        }
    

        var calc953 = parseInt(c999) - parseInt(c998);
        calc953 = formatearCodigo(calc953);
        $('#cod953').val(calc953);
    
    }


    //****************************************************************************************









    function calculo158(){



        var c104 = $('#cod104').val().replace('.','');



        var c105 = $('#cod105').val().replace('.','');

        var c106 = $('#cod106').val().replace('.','');

        var c108 = $('#cod108').val().replace('.','');

        var c109 = $('#cod109').val().replace('.','');

        var c110 = $('#cod110').val().replace('.','');

        var c155 = $('#cod155').val().replace('.','');

        var c152 = $('#cod152').val().replace('.','');

        var c161 = $('#cod161').val().replace('.','');

        var c749 = $('#cod749').val().replace('.','');

        var c764 = $('#cod764').val().replace('.','');

        var c169 = $('#cod169').val().replace('.','');



        var calc158  = parseInt(c104) + parseInt(c105) + parseInt(c106) + parseInt(c108) + parseInt(c109) + parseInt(c110) + parseInt(c155) + parseInt(c152) + parseInt(c161) + parseInt(c749) - parseInt(c764) - parseInt(c169);



        $('#cod158').val(calc158);



    }





    function seleccionar(cod){
        $('#'+ cod ).select(); 
    }

    //formatear números negativos
    function formatearCodigoNegativo(numero) {
        var negativo = "";
        if (numero < 0) {
            numero = numero.toString().replace('-', '');
            negativo = "si";
        }
        var num = numero.toString().replace('/\./g', '');

        if (!isNaN(num)) {

            num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1.');

            num = num.split('').reverse().join('').replace(/^[\.]/, '');

            if (negativo == "si") {
                num = "-" + num;
            }

            return num;

        }
    }  



    //formatear números
    function formatearCodigo(numero) {
        if (numero < 0) {
            numero = numero.toString().replace('-', '');
        }
        var num = numero.toString().replace('/\./g', '');
        if (!isNaN(num)) {
            num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1.');
            num = num.split('').reverse().join('').replace(/^[\.]/, '');
            return num;
        }
    }


    function format(input)
    {
        var num = input.value.replace(/\./g,'');
        var isnegative = "";
        if (num < 0) {
            isnegative = "si";
            num = num.toString().replace('-', '');
        }
        if(!isNaN(num)){
            num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g,'$1.');
            num = num.split('').reverse().join('').replace(/^[\.]/,'');
            if (isnegative == "si") {
                num = "-" + num;
            }
            input.value = num;

        }
        else{ 
            input.value = input.value.replace(/[^\d\.]*/g,'');
        }
    }





    function format0(input){
        var num = input.value;
        if(num.length === 0 ){
            input.value = 0;
        } 

    }