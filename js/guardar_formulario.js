
function guardar_reverso() {


    var c617 = 0;

    if ($('#cod617').val().trim() != "") {
        c617 = $('#cod617').val().trim();
        c617 = ((c617).replace(/\./g, ''));
    }

    var id_contribuyente = $('#id_contrib').html();

    
    var actionData = "{'c617': '" + c617 + "' ,'id_contribuyente': '" + id_contribuyente + "'}";
    $.ajax(
    {
       url: "formulario.aspx/guardar_reverso",
       data: actionData,
       dataType: "json",
       type: "POST",
       contentType: "application/json; charset=utf-8",
       success: function (msg) {
       if (msg.d == 1) {
           alert('Reverso guardado correctamente.');
        }
        else {
          alert('Ocurrió al guardar Reverso.');
          
        }
       },
       error: function (result) {
           alert("ERROR " + result.status + ' ' + result.statusText);
       }
   });
}