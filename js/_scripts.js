
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
        
        $('#btn_login').css('color', '#00a3e0');
        $('#btn_login').css('background-color', '#fff');
    }

    if (nro == 4) {
        $('#btn_login').css('color', '#d0d0ce');
        $('#btn_login').css('background-color', '#2b2b2b');
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



