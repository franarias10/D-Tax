<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>
<!DOCTYPE HTML>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home Deloitte TCS.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:white;">
    <div style="display:none;" id="rut_correcto">1</div>
    <div style="display:none;" id="mail_correcto">1</div>
    <form action="/" runat="server" method="post">
        <div runat="server" id="id_user" style="display:none;"></div>
        <div runat="server" id="perfil" style="display:none;"></div>
        <div runat="server" id="grupo" style="display:none;"></div>
    </form>
    <div id="light" class="white_content" style="width:200px;top:20%;margin-left: -100px;height:225px;"> 
        <div style="position: relative;float: left;left: 50%;margin-left: -64px;top: 50px;">  <img src="img/ajax-loader.gif" > </div>
        <div style="clear:both;"></div>
    </div>
    <div id="fade" class="black_overlay"></div>
	<div id="header_home">
        <div style="position: relative;float: left;left: 5%;top: 25px;">  <img src="img/logo.png"  width="165px"   /> </div>
        <div style="position:relative;float:left;color:white; font-size: 32px; top:25px;left:8%;">Deloitte <a style="color:#86BC25;text-decoration: none;">TCS</a></div>
        <div style="position: relative;float: right;right: 2%;top: 60px;">
            <a href="#" style="text-decoration:none;"> <img width="70" src="img/menu/btn-home.png" /> </a>
            <a href="#" style="text-decoration:none;">   <img width="70"  src="img/menu/btn-irc.png" /></a>
            <a href="formulario22" style="text-decoration:none;">  <img width="70"  src="img/menu/btn-22.png" /></a>
            <a href="#" style="text-decoration:none;"> <img width="70"  src="img/menu/btn-dj.png" /></a>
            <a href="#" style="text-decoration:none;">  <img width="70"  src="img/menu/btn-f29.png" /></a>
            <a href="#" style="text-decoration:none;">  <img width="70"  src="img/menu/btn-f50.png" />  </a>
            <a href="#" style="text-decoration:none;">  <img width="100"  src="img/menu/btn-analisis.png" /></a> 
            <a href="#" style="text-decoration:none;">  <img width="70"  src="img/menu/btn-about.png" /> </a>
            <a href="#" style="text-decoration:none;">  <img width="125"  src="img/menu/btn-contact.png" />  </a>
        </div>
        <div class="username">
            Francisco Arias
        </div> 
        <div  style=" margin-right: 30px; margin-top: 10px;position: absolute;right: 0;cursor:pointer;" >
             <img width="49"  src="img/gear.png" /> 
        </div>       
	 </div>
     <div id="contenido-home">
         <div id="contenedorSlideHome" style="position:relative" onmouseover="mostrarFlechas()" onmouseout="ocultarFlechas()">
                  <div id="izq" onclick="detener();" ><img src="img/flechaIZQ.png"></div>
                  <div id="slideHM" class="pics" style="position: absolute;z-index:0; overflow: hidden;">
                        <a href="" target="_parent" style="text-decoration:none;">
                            <div style=" background-color: white;color: grey; font-size: 14px;height: 237px;padding: 20px;text-align: justify;width: 730px;">
                                </br></br>Deloitte TCS es la suite de Tax & Legal de Deloitte Chile que contiene diversos módulos que permiten la realización de servicios vinculados a Impuesto a la Renta e Impuestos Diferidos, Declaración de Impuestos Anuales y Mensuales, análisis tributario y declaraciones juradas. </br></br>
                                Accede a unos de los módulos disponibles…
                            </div>
                        </a> 
                        <a href="" target="_parent" style="text-decoration:none;"><div style="background-color:white; width:730px;height:237px;color: grey;"><img src="img/slider3.png" width="620px"></div></a>
                        <a href="" target="_parent" style="text-decoration:none;"><div style="background-color:white; width:730px;height:237px;color: grey;"><img src="img/slider2.png" width="650px"></div></a>
                        <a href="" target="_parent" style="text-decoration:none;"><div style="background-color:white; width:730px;height:237px;color: grey;"><img src="img/slider4.png" width="558px"></div></a>
                  </div>       
                  <div id="der" onclick="detener();" ><img src="img/flechaDER.png"></div>
            </div>
     </div>
     <div style="float: left;left: 50%; margin-left: -650px; position: relative; width: 1300px;top:10px;">
         <div style="position:relative;float:left;left:3%;"> <a href="https://americas.internal.deloitteonline.com/sites/tl_Chile/SitePages/Home.aspx " style="text-decoration:none" target="_blank">  <img width="280"  src="img/cuadro1.png" />  </a></div>
         <div style="position:relative;float:left;left:45px;"> <a href="#" style="text-decoration:none">  <img width="287"  src="img/cuadro2.png" />  </a></div>
         <div style="position:relative;float:left;left:50px;"> <a href="#" style="text-decoration:none">  <img width="290"  src="img/cuadro3.png" />  </a></div>
         <div style="position:relative;float:left;left:62px;top:2px;"> <a href="#" style="text-decoration:none">  <img width="278"  src="img/cuadro4.png" />  </a></div>
    </div>     
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.Rut.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/cycle.js" ></script>
    <script type="text/javascript" src="js/slider.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
            $('[data-toggle="popover"]').popover();
        });
    </script>

</body>
</html>
