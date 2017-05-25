<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contribuyente.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="app1">
<head runat="server">
     <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
     <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
     <script src="../Scripts/angular.min.js"></script>
    <script src="../Scripts/angular-local-storage.min.js"></script>
     <script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
     <script type="text/javascript" src="../js/scripts.js"></script>
     <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/sweetalert.css"/>
     <script src="../js/jquery.corner.js"></script>
     <script src="../js/angular/controller.js"></script>
     <script src="../js/jquery.corner.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/sweetalert.min.js"></script>
    <title>Formulario 22</title>
    
    		<style type="text/css">
			
			* {
				margin:0px;
				padding:0px;
			}
			
			#header {
				margin:auto;
				width:500px;
				
			}
			
			ul, ol {
				list-style:none;
			}
			
			.nav > li {
				float:left;
			}
			
			.nav li a {
				background-color:#000;
				color:#fff;
				text-decoration:none;
				padding:10px 12px;
				display:block;
               
			}
			
			.nav li a:hover {
				background-color:#434343;
			}
			
			.nav li ul {
				display:none;
				position:absolute;
				min-width:140px;
                 font-size:12px;
			}
			
			.nav li:hover > ul {
				display:block;
			}
			
			.nav li ul li {
				position:relative;
			}
			
			.nav li ul li ul {
				right:-140px;
				top:0px;
			}
			
		</style>
   
</head>
<body ng-controller="controlador">
    
     <div style="display:none;" id="rut_correcto">1</div>
     <div style="display:none;" id="mail_correcto">1</div>
     <form action="/" runat="server" method="post">
        <div runat="server" id="id_user" style="display:none;" ></div>
        <div runat="server" id="perfil" style="display:none;"></div>
        <div runat="server" id="grupo" style="display:none;"></div>
        <div runat="server" id="a_trib" style="display:none;"></div>
        <div runat="server" id="id_contri" style="display:none;"></div>
    </form>
    <!--lightbox cargando-->
    <div id="light" class="white_content" style="width:200px;top:20%;margin-left: -100px;height:225px;"> 
        <div style="position: relative;float: left;left: 50%;margin-left: -64px;top: 50px;">  <img src="../img/ajax-loader.gif" /> </div>
        <div style="clear:both;"></div>
    </div>
  
     <div id="fade" class="black_overlay" onclick="cerrar_crear()">    </div>
	 <div id="header_home" style="float:none;margin:0 auto; width:1280px;">
        <div style="position: relative;float: left;left: 80px;top: 25px;">  <img src="../img/logo.png"  width="165px"   /> </div>
        <div style="position:relative;float:left;color:white; font-size: 32px; top:25px;left:8%;">Deloitte <a style="color:#86BC25;text-decoration: none;">F22</a></div>
         <div style="float:left;position: absolute;top: 70px;z-index: 10000;left:72px;">
             <ul class="nav">
				    <li><a style="cursor:pointer;">Archivo</a>
                        <ul>
                            <li><a style="cursor:pointer;">Nuevo F22</a>
                                <ul>
							        <li ><a onclick="nuevo_f22(2017)" style="cursor:pointer;">AT 2017</a></li>
							        <li><a onclick="nuevo_f22(2016)" style="cursor:pointer;">AT 2016</a></li>
						        </ul>
                            </li>
                            <li><a style="cursor:pointer;">Abrir F22</a>
                                 <ul>
							        <li><a href="">AT 2017</a></li>
							        <li><a href="">AT 2016</a></li>
						        </ul>
                            </li>
							<li><a style="cursor:pointer;" onclick="crear_contrib()">Crear Contribuyente</a></li>
							<li><a href="../home.aspx">Salir</a></li>
						</ul>
				    </li>
				    <li><a style="cursor:pointer;display:none;">Validar</a>
                        <ul>
							<li><a href="">Anverso</a></li>
							<li><a href="">Reverso</a></li>
						</ul>
				    </li>
				    <li><a style="cursor:pointer;display:none;" href="">Generar TXT</a></li>
				    <li><a style="cursor:pointer;display:none;" href="">Contacto</a></li>
			    </ul>
            </div>
            <div style=" color: #86bc25; float: right; font-size: 16px;position: relative;right: 30px;top: 60px;font-weight:bold;">
                
                    <div style="position:relative;float:left;"><asp:Label ID="nombre_contribuyente" Text="HOLDING ABC S.A." runat="server" /> </div>
                    <div class="clearFix"></div> 
                    <div style="position:relative;float:left;"><asp:Label ID="a_tributario" Text="Año Tributario 2017" runat="server" /></div>
                    
            </div>
            
     
     </div>
    <div class="clearFix"></div>
    <div style="position:relative;width:1500px;margin:0 auto">
        <div style="position:relative;float:left;height:900px;width:200px;background-color:#ffffff;border:1px solid;display:block;overflow-y: auto;">
            <div class="btnes_formulario" onclick="abrir_secciones_anverso()" style="margin-top:20px;">Anverso</div>
            <div class="clearFix"></div>
             <div id="seccion_anverso"  style="display:none;" class="btnes_formulario_cabecera">
                  <div class="btnes_formulario" >Secciones</div>
                  <div onclick="linea_seccion(1)" class="btnes_interior_formulario"  >Impuesto Global Complementario o Impuesto de Segunda Categoría</div>
                  <div id="lineas_seccion1"  style="display:none;">
                    <div class="btnes_lineas_formulario" style="cursor:auto;" ><a class="nro_btn_menu">L</a><a class="concepto_menu">Concepto</a></div>
                      <div onclick="abrir_linea(1)" class="btnes_interior_formulario"><a class="nro_btn_menu">1</a><a class="concepto_menu">Retiros</a></div>
                      <div onclick="abrir_linea(2)" class="btnes_interior_formulario"><a class="nro_btn_menu">2</a><a class="concepto_menu">Dividendos</a></div>
                      <div onclick="abrir_linea(3)" class="btnes_interior_formulario"><a class="nro_btn_menu">3</a><a class="concepto_menu">Gastos rechazados</a></div>
                      <div onclick="abrir_linea(4)" class="btnes_interior_formulario"><a class="nro_btn_menu">4</a><a class="concepto_menu">Rentas presuntas</a></div>
                      <div onclick="abrir_linea(5)" class="btnes_interior_formulario"><a class="nro_btn_menu">5</a><a class="concepto_menu">Rentas efectivas</a></div>
                      <div onclick="abrir_linea(6)" class="btnes_interior_formulario"><a class="nro_btn_menu">6</a><a class="concepto_menu">Honorarios</a></div>
                      <div  class="btnes_interior_formulario"  ><a class="nro_btn_menu">7</a><a class="concepto_menu">Rentas Capitales Mob. </a></div>
                      <div onclick="abrir_linea(8)" class="btnes_interior_formulario"><a class="nro_btn_menu">8</a>     <a class="concepto_menu">Rentas exentas</a></div>
                      <div onclick="abrir_linea(9)" class="btnes_interior_formulario"><a class="nro_btn_menu">9</a><a class="concepto_menu">Rentas del Trabajo</a></div>
                      <div onclick="abrir_linea(10)" class="btnes_interior_formulario"><a class="nro_btn_menu">10</a><a class="concepto_menu">Inc. 1era cat y Exterior</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">11</a><a class="concepto_menu">Contribuciones y donación</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">12</a><a class="concepto_menu">Pérdida Capitales Mob.</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">13</a><a class="concepto_menu">Sub Total</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">14</a><a class="concepto_menu">Cot. empr. o socio</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">15</a><a class="concepto_menu">Intereses y Div. Hipo</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">16</a><a class="concepto_menu">APV y 20% Fdos. Inv.</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">17-18</a><a class="concepto_menu">BI, IUSC o CG(tabla)</a></div>    
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">20 y 32</a><a class="concepto_menu">ANP. y ANN.</a></div>
                      <div class="btnes_interior_formulario"><a class="nro_btn_menu">18-37</a><a class="concepto_menu">IUSC o CG det. </a></div>
                       
                  </div>
                  <div class="btnes_interior_formulario"  >Impuestos Anuales a la Renta</div>
                  <div class="btnes_interior_formulario"  >Recargos por Fuera de Plazo</div>
                  <div class="btnes_interior_formulario"  >Impuesto a Pagar</div>
                  <div class="btnes_interior_formulario"  >Saldo a Favor</div>
             </div>
            <div class="btnes_formulario" onclick="abrir_secciones_reverso()">Reverso</div>
            <div class="clearFix"></div>
             <div id="seccion_reverso"  style="display:none;" class="btnes_formulario_cabecera">
                  <div class="btnes_formulario" >Recuadros</div>
                  <div onclick="abrir_recuadro(1)" class="btnes_interior_formulario"  >Recuadro Nro. 1</div>
                  
             </div>   

        </div>
        <div  style="position:relative;float:left;width:1300px;height:900px; background-color:#ffffff;" >
            <!--linea 1-->
            <div id="linea1" style="display:block;" >
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L1 – Retiros (artículo 14, 14 bis y 14 quarter) 
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        1
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        Retiros(Arts. 14, 14 Bis y 14 quáter)
                    </div>
                </div>
                <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos por impuesto de primera categoría Empresario Individual
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">847</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">{{c847 | number:0}}</div>
                    </div>
                </div>
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">600</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">{{c600 | number:0}}</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">104</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">{{c104 | number:0}}</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>
            
                
             <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" ng-model="nuevalinea1.sociedad" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:100%;height:90px;text-align: center;font-size: 11px; font-weight: bold; border-bottom: 1px solid #bbbcbc;">
                        Montos Actualizados
                    </div>
                    <div style="position:relative;float:left;width:300px;text-align: center;">
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                           Monto afecto a impuesto global complementario o adicional
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Monto exento de impuesto global complementario
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Incremento por impuesto de primera categoría
                        </div>
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea1.v1" />
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea1.v2"/>
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea1.v3"/>
                    </div>
                </div>

                  <div style="position:relative;float:left;width:795px;">
                    <div style="position:relative;float:left;width:100%;height:90px; border-bottom: 1px solid #bbbcbc;">
                        <div style="position:relative;float:left;width:100%;height:20px;text-align: center;font-size: 11px;font-weight: bold; border-bottom: 1px solid #bbbcbc;"> Créditos para Impuesto Global Complementario o Adicional </div>
                        <div style="position:relative;float:left;">
                            <div style="position:relative;float:left;width:290px;height:30px;text-align: center;font-size: 11px;border-bottom: 1px solid #bbbcbc;border-right: 1px solid #bbbcbc;">Afectos a global complementario o adicional</div>
                            <div style="position:relative;float:left;width:205px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:105px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:105px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:90px;height:30px;text-align: center;font-size: 11px;"></div>                              
                            <div class="clearFix"></div>
                            <div style="position:relative;float:left;width:290px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;">Retiros efectivos</div> 
                            <%--<div style="position:relative;float:left;width:75px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;">Renta presunta</div> --%>
                            <div style="position:relative;float:left;width:205px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;">Exentos de global complementario</div>
                            <div style="position:relative;float:left;width:105px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;border-bottom: 1px solid #fff;">Cédito por impuestos externos</div>
                            <div style="position:relative;float:left;width:105px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;border-bottom: 1px solid #fff;">Impuesto tasa adicional ex art. 21</div>
                            <div style="position:relative;float:left;width:90px;height:40px;text-align: center;font-size: 11px;border-bottom: 1px solid #fff;">Empresario Individual</div>  
                        </div>                                 
                    </div>
                    <div style="position:relative;float:left;width:100%;text-align: center;">
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Con derecho a devolución
                        </div>
                        <div style="position:relative;float:left;width:190px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Sin derecho a devolución
                        </div>
                        <%--<div style="position:relative;float:left;width:75px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Con derecho a devolución
                        </div>--%>
                        <div style="position:relative;float:left;width:105px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Con derecho a devolución
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Sin derecho a devolución
                        </div>
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea1.v4"/>
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 190px;"  placeholder="0" ng-model="nuevalinea1.v5"/>
                    </div>
                     <%--<div style="position:relative;float:left;width:75px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 75px;"  placeholder="0" ng-model="nuevalinea1.v6"/>
                    </div>--%>
                     <div style="position:relative;float:left;width:100px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 100px;"  placeholder="0" ng-model="nuevalinea1.v7"/>
                    </div>
                     <div style="position:relative;float:left;width:105px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 105px;"  placeholder="0" ng-model="nuevalinea1.v8"/>
                    </div>
                     <div style="position:relative;float:left;width:105px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 105px;"  placeholder="0" ng-model="nuevalinea1.v9"/>
                    </div>
                     <div style="position:relative;float:left;width:105px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="number"  style="border:none;text-align: right;width: 105px;"  placeholder="0" ng-model="nuevalinea1.v10"/>
                    </div>
                    <div style="position:relative;float:left;width:75px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                          <select  id="cod_act_econ" style="border:none;text-align: center;width: 75px;" ng-model="nuevalinea1.v11">
                            <option value="si" >Sí</option>
                            <option value="no" >No</option>
                          </select>
                         
                    </div>
                </div>
             </div>
             <div class="clearFix"></div>
                <div style="position:relative;float:right;top:20px;right:20px;"><input type="button" name="name" value="Ingresar línea" ng-click="agregarlinea1()"/></div>
                
             <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 1270px;">
                         
                            <tbody id="contribuyentes">
                               <tr id="linea1_{{datos.id}}" ng-click="abrirlinea(datos)" onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)" ng-repeat="datos in linea1"> <td style="padding: 0;text-align:right;width:190px;">{{datos.sociedad}}</td><td style="text-align:right;padding: 0;width:100px; ">{{datos.v1 | number:0}}</td><td style="text-align:right;padding: 0;width:100px;">{{datos.v2 | number:0}}</td><td style="text-align:right;padding: 0;width:100px; ">{{datos.v3 | number:0}}</td><td style="text-align:right;padding: 0;width:100px;">{{datos.v4 | number:0}}</td><td style="text-align:right;padding: 0;width:190px;">{{datos.v5 | number:0}}</td><%--<td style="text-align:right;padding: 0;width: 75px;">{{datos.v6 | number:0}}</td>--%><td style="text-align:right; padding: 0;width:105px;">{{datos.v7 | number:0}}</td><td style="text-align:right;padding: 0;width: 100px;">{{datos.v8 | number:0}}</td><td style="text-align:right;padding: 0;width: 105px;">{{datos.v9 | number:0}}</td><td style="text-align:right;padding: 0;width: 105px;">{{datos.v10 | number:0}}</td><td style="text-align:center;padding: 0;">{{datos.v11}}</td></tr>
                               
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
            <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea1 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea2 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea3 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea4 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 190px;">{{totalLinea5 | number:0}}</div>
                <%--<div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 75px;">{{totalLinea6 | number:0}}</div>--%>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea7 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea8 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea9 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea10 | number:0}}</div>

              </div>
            </div>
            <!--fin linea1-->
            <!--linea 2-->
            <div id="linea2" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L2 – Dividendos
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        2
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                        Dividendos distribuidos por S.A., C.P.A. y S.p.A. (Arts.14, 14 bis y 14 quáter).
                    </div>
                </div>
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">601</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">{{c601 | number:0}}</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">105</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">{{c105 | number:0}}</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>

             <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" ng-model="nuevalinea2.sociedad" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:100%;height:90px;text-align: center;font-size: 11px; font-weight: bold; border-bottom: 1px solid #bbbcbc;">
                        Montos Actualizados
                    </div>
                    <div style="position:relative;float:left;width:300px;text-align: center;">
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                           Monto afecto a impuesto global complementario o adicional
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Monto exento de impuesto global complementario
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Incremento por impuesto de primera categoría
                        </div>
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea2.v1" />
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea2.v2"  />
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" ng-model="nuevalinea2.v3"  />
                    </div>
                </div>

                  <div style="position:relative;float:left;width:630px;">
                    <div style="position:relative;float:left;width:100%;height:90px; border-bottom: 1px solid #bbbcbc;">
                        <div style="position:relative;float:left;width:100%;height:20px;text-align: center;font-size: 11px;font-weight: bold; border-bottom: 1px solid #bbbcbc;"> Créditos para Impuesto Global Complementario o Adicional </div>
                        <div style="position:relative;float:left;">
                            <div style="position:relative;float:left;width:215px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;">Afectos a global complementario o adicional</div>
                            <div style="position:relative;float:left;width:205px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;">Exentos de global complementario</div>
                            <div style="position:relative;float:left;width:105px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:105px;height:30px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                                                       
                            <div class="clearFix"></div>
                            <div style="position:relative;float:left;width:215px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:205px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;"></div>
                            <div style="position:relative;float:left;width:105px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;border-bottom: 1px solid #fff;">Cédito por impuestos externos</div>
                            <div style="position:relative;float:left;width:105px;height:40px;text-align: center;font-size: 11px;border-right: 1px solid #bbbcbc;border-bottom: 1px solid #fff;">Impuesto tasa adicional ex art. 21</div>
                            
                        </div>                                 
                    </div>
                    <div style="position:relative;float:left;width:100%;text-align: center;">
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Con derecho a devolución
                        </div>
                        <div style="position:relative;float:left;width:115px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Sin derecho a devolución
                        </div>
                        
                        <div style="position:relative;float:left;width:105px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Con derecho a devolución
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          Sin derecho a devolución
                        </div>
                    </div>
                    <div style="position:relative;float:left;width:100px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 100px;"  placeholder="0" ng-model="nuevalinea2.v4"  />
                    </div>
                    <div style="position:relative;float:left;width:116px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 116px;"  placeholder="0" ng-model="nuevalinea2.v5" />
                    </div>
                     <div style="position:relative;float:left;width:105px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 105px;"  placeholder="0" ng-model="nuevalinea2.v6" />
                    </div>
                     <div style="position:relative;float:left;width:100px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 100px;"  placeholder="0" ng-model="nuevalinea2.v7" />
                    </div>
                     <div style="position:relative;float:left;width:105px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 105px;"  placeholder="0" ng-model="nuevalinea2.v8" />
                    </div>
                     <div style="position:relative;float:left;width:100px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 100px;"  placeholder="0" ng-model="nuevalinea2.v9" />
                    </div>
                     <div class="clearFix"></div>
                     <div style="position:relative;float:right;top:20px;right:20px;"><input type="button" name="name" value="Ingresar línea" ng-click="agregarlinea2()"/></div>
                
                    
                </div>
             </div>
             <div class="clearFix"></div>
             <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 1120px;">
                            <tbody>
                               <tr id="linea2_{{datos.id}}" onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)"  ng-repeat="datos in linea2">
                                   <td style="padding: 0;text-align:right;width:190px;">{{datos.sociedad}}</td>
                                   <td style="text-align:right;padding: 0; width: 100px;">{{datos.v1}}</td>
                                   <td style="text-align:right;padding: 0;width: 100px;">{{datos.v2}}</td>
                                   <td style="text-align:right;padding: 0;width: 100px; ">{{datos.v3}}</td>
                                   <td style="text-align:right;padding: 0;width: 100px;">{{datos.v4}}</td>
                                   <td style="text-align:right;padding: 0;width: 116px;">{{datos.v5}}</td>
                                   <td style="text-align:right;padding: 0;width: 105px;">{{datos.v6}}</td>
                                   <td style="text-align:right; padding: 0;width: 100px;">{{datos.v7}}</td>
                                   <td style="text-align:right;padding: 0;width: 105px;">{{datos.v8}}</td>
                                   <td style="text-align:right;padding: 0;width: 100px;">{{datos.v9}}</td>
                                </tr>
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
            <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea2_1 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea2_2 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea2_3 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">{{totalLinea2_4 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 116px;">{{totalLinea2_5 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea2_6 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea2_7 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea2_8 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 105px;">{{totalLinea2_9 | number:0}}</div>
                

             </div>
            </div>
            <!--fin línea 2-->
            <!--Línea 3-->
            <div id="linea3" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L3 – Gastos rechazados
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        3
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                        Dividendos distribuidos por S.A., C.P.A. y S.p.A. (Arts.14, 14 bis y 14 quáter).
                    </div>
                </div>
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 180px;background-color:#bbbcbc;"></div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">106</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>

             <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" />
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        PARTIDAS (N°1 ART.33 LIR) QUE CORRESPONDEN A RETIROS DE ESPECIES O DESEMBOLSOS DE DINERO ACTUALIZADOS.
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:100%;height:90px;text-align: center;font-size: 11px; font-weight: bold; border-bottom: 1px solid #bbbcbc;">
                        BENEFICIO POR EL USO O GOCE DE BIENES DEL ACTIVO DE LA RESPECTIVA EMPRESA, SOCIEDAD O COMUNIDAD ACTUALIZADOS
                    </div>
                    <div style="position:relative;float:left;width:300px;text-align: center;">
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                           AUTOMÓVILES Y SIMILARES
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          BIENES RAÍCES
                        </div>
                        <div style="position:relative;float:left;width:100px;text-align: center;height:60px;font-size:10px;border-right: 1px solid #bbbcbc;">
                          OTROS BIENES
                        </div>
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" />
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" />
                    </div>
                    <div style="position:relative;float:left;width:99px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;text-align: right;width: 99px;"  placeholder="0" />
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        GARANTÍAS EJECUTADAS SOBRE BIENES DEL ACTIVO QUE GARANTIZAN DEUDAS ACTUALIZADAS
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       PRESTAMOS QUE FONDOS DE INVERSION EFECTUAN A SUS APORTANTES
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       10% TASA ADICIONAL DE IMPUESTO GLOBAL COMPLEMENTARIO SORE CANTIDADES DECLARADAS EN LÍNEA 3 (INC 3, ART. 21)
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>

                 
             </div>
             <div class="clearFix"></div>
             <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 930px;">
                            <tbody>
                               <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; width:110px;">10.000</td>
                                   <td style="text-align:right;padding: 0;width:99px;">10.000</td>
                                   <td style="text-align:right;padding: 0; width:99px;">10.000</td>
                                   <td style="text-align:right;padding: 0;width:99px;">10.000</td>
                                   <td style="text-align:right;padding: 0;width:110px;">10.000</td>
                                   <td style="text-align:right;padding: 0;width:110px;">10.000</td>
                                   <td style="text-align:right; padding: 0;width:110px;">10.000</td>
                                   
                                </tr>
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
            <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 100px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                

             </div>
            </div>
            <!--fín Línea 3-->
            <!--línea 4-->
             <div id="linea4" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L4 – Rentas presuntas
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        4
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                       Rentas presuntas de: Bienes Raíces, Minería, Explotación de Vehículos y otras (Art. 34).
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">603</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">{{c603 | number:0}}</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">108</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">{{c108 | number:0}}</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>

                  <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad"  ng-model="nuevalinea4.sociedad" required/>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Renta Presunta 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea4.v1" required/>
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Crédito por Impuesto de 1° Categoria con derecho devolución 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea4.v2" required/>
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Crédito por Impuesto de 1° Categoria sin derecho devolución 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea4.v3" required/>
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Trasladar a Línea 41
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <select  id="trasladar_lin41" style="border:none;text-align: center;width: 110px;" ng-model="nuevalinea4.v4" required>
                            <option value="si" >Sí</option>
                            <option value="no" >No</option>
                          </select>
                    </div>
                </div>
                 <div class="clearFix"></div>
                <div style="position: relative;float: left;top: 20px;left: 540px;"><input type="button" name="name" value="Ingresar línea" ng-click="agregarlinea4()"/></div>    
                 
             </div>
             <div class="clearFix"></div>
                <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 630px;">
                            <tbody>
                                <tr id="linea4_{{datos.id}}" onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)" ng-repeat="datos in linea4">
                                   <td style="padding: 0;text-align:right;width:190px;">{{datos.sociedad}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px; ">{{datos.v1 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px;">{{datos.v2 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px; ">{{datos.v3 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px;">{{datos.v4 }}</td>
                                </tr>
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
            <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea4_1 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea4_2 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea4_3 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea4_4 | number:0}}</div>
                

             </div>
            </div>

            <!--fín Línea 4-->
            <!--Línea 5-->
            <div id="linea5" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L5 – Rentas efectivas
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        5
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    <div style="position:relative;float:left;width:300px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:300px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                      Rentas Propias determinadas según contabilidad simplificada, planillas, contratos y otras rentas.
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">603</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">21321321</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">108</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;background-color:#bbbcbc;"></div>
                </div>
               
            </div>

                <div style="position:relative;float:left;width:100%;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                      
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    
                    <div style="position:relative;float:left;width:300px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                      Rentas por participación en sociedades que determinen rentas según contabilidad simplificada, planillas, contratos y otras rentas.
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">603</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">21321321</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">108</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;background-color:#bbbcbc;"></div>
                </div>
               
            </div>
            <div class="clearFix"></div>
                <div style="position:relative;float:left;width:100%;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                      
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    
                    <div style="position:relative;float:left;width:300px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                      Rentas obtenidas de contribuyentes acogidos a letra A del artículo 14 Ter (Propias y por Participaciones en Sociedades).
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">603</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">21321321</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">108</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;background-color:#bbbcbc;"></div>
                </div>
               
            </div>
            <div class="clearFix"></div>

                <div style="position:relative;float:left;width:100%;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                      
                    </div>
                </div>
                <div style="position:relative;float:left;width:300px;">
                    
                    <div style="position:relative;float:left;width:300px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                      Total Rentas determinadas según código [604]= códigos [954]+[956]+[958] y código [109]= códigos [955]+[957]+[959].
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">603</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">21321321</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">108</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>

                  <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" />
                    </div>
                </div>
                 <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Tipo de Renta
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Monto Renta actualizada  
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       Crédito por Impuesto de 1° Categoria  
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                      <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      Crédito por Impuesto Tasa Adicional, Ex Art. 21
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>

                 
             </div>
             <div class="clearFix"></div>
                <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 630px;">
                            <tbody>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                               <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   
                                </tr>

                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
            <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">231.00.000</div>
                

             </div>
            </div>

            <!--Fín Línea 5-->
            <!--Línea 6-->
             <div id="linea6" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L6 – Honorarios (Recuadro N°1)
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        6
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                        Rentas percibidas de los Arts. 42 Nº 2 (Honorarios) y 48 (Rem. Directores S.A.), según Recuadro N°1.
                    </div>
                </div>
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 180px;background-color:#bbbcbc;"></div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">110</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>
                
                         <div id="columna1" style="position:relative;float:left;width:692px;border:1px solid; margin-left: 10px;margin-top: 50px;">
                         <div style="position:relative;float:left;height:50px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">Rentas de 2ª Categoría</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">Renta Actualizada</div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">Impuesto Retenido Actualizado</div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 13px;text-align:center;">Honorarios Anuales Con Retención.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">461</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod461" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo547();"  onselect="calculo547();" style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">492</div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod492" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo619();" onselect="calculo619();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">+</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 14px;text-align:center;">Honorarios Anuales Sin Retención.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">545</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod545" onfocus="seleccionar(this.id)"  onkeyup="format(this);calculo547();" onselect="calculo547();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">+</div>
                             </div>   
                         </div>
                          <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Incremento por impuestos pagados o retenidos en el exterior.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">856</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod856" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo547();" onselect="calculo547();" style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">+</div>
                             </div>   
                         </div>
                          <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 14px;text-align:center;">Total Ingresos Brutos.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">547</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod547" onfocus="seleccionar(this.id)" onkeyup="format(this)"   style="text-align: right;height:100%;resize: none;font-size: 16px;"   readonly></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">=</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Participación en Soc. de Profes. de 2ª Categ.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">617</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod617" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">+</div>
                             </div>   
                         </div>
                          <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Monto Ahorro Previsional Voluntario según inciso 1° Art. 42 bis.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">770</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod770" onfocus="seleccionar(this.id)"  onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                    
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">-</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Gastos por donaciones para fines sociales (Art. 1° bis Ley N° 19.885).</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">872</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod872" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">-</div>
                             </div>   
                         </div>
                          <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Gastos Efectivos (sólo del Total Ingresos Brutos).</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">465</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod465" onfocus="seleccionar(this.id)"  onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">-</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Gastos Presuntos: 30% sobre el código 547, con tope $ 8.091.9000</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">494</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod494" onfocus="seleccionar(this.id)"  onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">-</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Rebaja por presunción de asignación de zona  D.L. N° 889.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">850</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod850" onfocus="seleccionar(this.id)"  onkeyup="format(this);calculo467();" onselect="calculo467();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">-</div>
                             </div>   
                         </div>
                          <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 14px;text-align:center;">Total Honorarios.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">467</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod467" onfocus="seleccionar(this.id)" onkeyup="format(this)"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   readonly></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;background-color: #ededed;"></div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;background-color: #ededed;">
                                      
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">=</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 11px;text-align:center;">Total Remuneraciones Directores S.A.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">479</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod479" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo618();" onselect="calculo618();"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">491</div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod491" onfocus="seleccionar(this.id)" onkeyup="format(this);calculo619();" onselect="calculo619();" style="text-align: right;height:100%;resize: none;font-size: 16px;"   ></textarea>
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">+</div>
                             </div>   
                         </div>
                         <div style="position:relative;float:left;height:33px;width:100%;border-bottom:1px solid;">
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;font-size: 14px;text-align:center;font-weight:bold;">Total Rentas y Retenciones.</div>
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center;">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">618</div>
                                 <div style="position:relative;float:left;height:100%;width:179px; font-size: 14px;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod618" onfocus="seleccionar(this.id)" onkeyup="format(this)"  style="text-align: right;height:100%;resize: none;font-size: 16px;"   readonly></textarea>
                                 </div>
                             </div>   
                             <div style="position:relative;float:left;height:100%;width:230px;border-right: 1px solid;text-align:center">
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">619</div>
                                 <div style="position:relative;float:left;height:100%;width:129px; font-size: 14px;border-right:1px solid;">
                                      <textarea class="form-control"  runat="server" rows="1" id="cod619" onfocus="seleccionar(this.id)" style="text-align: right;height:100%;resize: none;font-size: 16px;"   readonly></textarea>
                                 </div>
                                 <div style="position:relative;float:left;height:100%;width:50px; font-size: 14px;border-right:1px solid;">=</div>
                             </div>   
                         </div>
                     </div>         


            </div>
            <!--Fín Línea 6-->



            <!--línea 8-->
             <div id="linea8" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L8 – Rentas exentas
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        8
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                       Rentas exentas del Impuesto Global Complementario (Art. 54 N°3).
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">606</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">{{c606 | number:0}}</div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">152</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">{{c152 | number:0}}</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" ng-model="nuevalinea8.sociedad" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      MONTO EXENTO DE IMPUESTO GLOBAL COMPLEMENTARIO
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea8.v1" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea8.v2" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       CRÉDITOS PARA IMPUESTO GLOBAL COMPLEMENTARIO O ADICIONAL CON DERECHO A DEVOLUCIÓN 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea8.v3" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        CRÉDITOS PARA IMPUESTO GLOBAL COMPLEMENTARIO O ADICIONAL SIN DERECHO A DEVOLUCIÓN 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea8.v4" required/>
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      IMPUESTO TASA ADICIONAL EX ART. 21
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="number"  style="border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea8.v5" required/>
                    </div>
                </div>
                <div class="clearFix"></div>
                <div style="position: relative;float: left;top: 20px;left: 635px;"><input type="button" name="name" value="Ingresar línea" ng-click="agregarlinea8()"/></div>    
                 
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 750px;">
                            <tbody>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)" ng-repeat="datos in linea8">
                                   <td style="padding: 0;text-align:right;width:190px;">{{datos.sociedad}}</td>
                                   <td style="text-align:right;padding: 0;width: 115px; ">{{datos.v1 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 115px;">{{datos.v2 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 115px; ">{{datos.v3 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 115px;">{{datos.v4 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 115px;">{{datos.v5 | number:0}}</td>
                                </tr>
                               
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 190px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">{{totalLinea8_1 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">{{totalLinea8_2 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">{{totalLinea8_3 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">{{totalLinea8_4 | number:0}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">{{totalLinea8_5 | number:0}}</div>

             </div>
            </div>

            <!--fín Línea 8-->
            <!--línea 9-->
             <div id="linea9" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L9 – Rentas Art. 42 N°1
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        9
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                      Rentas del Art. 42 Nº1 (sueldos, pensiones, etc.).
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Créditos para Impuesto de primera Categoría
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;background-color: #bbbcbc;"></div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;background-color: #bbbcbc;"></div>
                    </div>
                </div>
                 <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">161</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="border:none;"  placeholder="Ingrese nombre Sociedad" />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      MONTO EXENTO DE IMPUESTO GLOBAL COMPLEMENTARIO
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       CRÉDITOS PARA IMPUESTO GLOBAL COMPLEMENTARIO O ADICIONAL CON DERECHO A DEVOLUCIÓN 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="border:none;text-align: right;width: 110px;"  placeholder="0" />
                    </div>
                </div>
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;left:10px;margin-top:50px;">
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 525px;">
                            <tbody>
                                <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                </tr>
                               <tr onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)">
                                   <td style="padding: 0;text-align:right;width:190px;">Sociedad 1</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                                   <td style="text-align:right;padding: 0;">10.000</td>
                                   <td style="text-align:right;padding: 0; ">10.000</td>
                               </tr>
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">231.00.000</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 115px;">231.00.000</div>
            </div>
          </div>

            <!--fín Línea 9-->


             <!--línea 10-->
             <div id="linea10" style="display:none;">
            <div style="position:relative;float:left;margin-top:10px;margin-left:10px;font-weight:bold;">
                L10 – Incremento 1°cat y Exterior
            </div>
            <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:20px;margin-left:10px;font-size:12px;">
                Visualización línea formulario
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:20px;left:10px;">
                <div style="position:relative;float:left;width:40px;">
                    <div style="position:relative;float:left;width:40px;height:30px;text-align: center;font-size: 10px;">
                        Línea
                    </div>
                    <div style="position:relative;float:left;width:40px;height:25px;text-align: center;font-weight:bold;border:1px solid #bbbcbc;font-size: 12px;">
                        10
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                        
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                       Rentas exentas del Impuesto Global Complementario (Art. 54 N°3).
                    </div>
                </div>
                
               <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                      
                    </div>
                    <div style="position:relative;float:left;width:180px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;">159</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 139px;">21321321</div>
                    </div>
                </div>
                <div style="position:relative;float:left;width:200px;">
                    <div style="position:relative;float:left;width:200px;height:30px;text-align: center;font-size: 10px;">
                         Tipo de Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:200px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 8px;border-left:0;">
                       Incremento por impuestos pagados o retenidos en el exterior.
                    </div>
                </div>
                 <div style="position:relative;float:left;width:155px;">
                    <div style="position:relative;float:left;width:155px;height:30px;text-align: center;font-size: 10px;">
                       
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">748</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     
                </div>
                <div style="position:relative;float:left;width:180px;">
                    <div style="position:relative;float:left;width:180px;height:30px;text-align: center;font-size: 10px;">
                        Rentas y Rebajas
                    </div>
                    <div style="position:relative;float:left;width:155px;height:25px;text-align: center;border:1px solid #bbbcbc;font-size: 12px;border-left:0;">
                        <div style="position:relative;float:left;width:40px;height:100%;border-right:1px solid #bbbcbc;font-weight: bold;border-left:0;">749</div>
                        <div style=" background-color: #fff;  float: left;font-size: 12px; height: 100%;position: relative;text-align: right; width: 114px;">21321321</div>
                    </div>
                     <div style="position:relative;float:left;width:25px;height:25px;border:1px solid #bbbcbc;text-align: center;border-left:0;">+</div>
                </div>
               
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;height:1px;width:95%;background-color:#86bc25;left:10px;margin-top:40px"></div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;width:100%;margin-top:50px;left:10px;">
                <div style="position:relative;float:left;width:190px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:190px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        Sociedad
                    </div>
                    <div style="position:relative;float:left;width:190px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                        <input type="text"  style="display:none;border:none;"  placeholder="Ingrese nombre Sociedad" ng-model="nuevalinea10.sociedad" />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                     INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA LÍNEA 1 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v1"  />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                       INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA LÍNEA 2
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v2"  />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA LÍNEA 7
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v3"  />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                        INCREMENTO POR IMPUESTO  DE PRIMERA CATEGORÍA LÍNEA 8
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v4"  />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      INCREMENTO POR IMPUESTOS  PAGADOS O RETENIDOS EN EL EXTERIOR LÍNEA 1 
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v5"  />
                    </div>
                </div>
                <div style="position:relative;float:left;width:110px;">
                    <div style="border-right: 1px solid #bbbcbc;position:relative;float:left;width:110px;height:150px;text-align: center;font-size: 11px; font-weight: bold;">
                      INCREMENTO POR IMPUESTOS  PAGADOS O RETENIDOS EN EL EXTERIOR LÍNEA 2
                    </div>
                    <div style="position:relative;float:left;width:110px;height:25px;text-align: center;border-top:1px solid #bbbcbc;font-size: 12px;">
                       <input type="text"  style="display:none;border:none;text-align: right;width: 110px;"  placeholder="0" ng-model="nuevalinea10.v6"  />
                    </div>
                </div>
            </div>
            <div class="clearFix"></div>
            <div style="position:relative;float:left;left:10px;">
                
                  <div  class="datagrid" style="box-shadow: none;background:none;">
                         <table style=" width: 850px;">
                            <tbody>
                                <tr id="linea10_{{datos.id}}" onmouseover="cambiacolor_over(this)" onmouseout="cambiacolor_out(this)" ng-repeat="datos in linea10">
                                   <td style="padding: 0;text-align:right;width:190px;">{{datos.sociedad}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px; ">{{datos.v1 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;"width: 110px;>{{datos.v2 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px; ">{{datos.v3 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px;">{{datos.v4 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px;">{{datos.v5 | number:0}}</td>
                                   <td style="text-align:right;padding: 0;width: 110px;">{{datos.v6 | number:0}}</td>
                                    
                                </tr>
                              
                            </tbody>
                         </table>
                    </div>
             </div>
             <div class="clearFix"></div>
             <div style="position:relative;float:left;margin-top:10px;margin-top: 15px;">
                <div style=" float: left;font-size: 12px;font-weight: bold; position: relative;text-align: right;width: 200px;">TOTALES</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_1}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_2}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_3}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_4}}</div>
                <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_5}}</div>
                 <div style=" float: left;font-size: 12px;position: relative;text-align: right;width: 110px;">{{totalLinea10_6}}</div>
             </div>
            </div>

            <!--fín Línea 10-->


            <!--recuadro 1-->
             <div id="recuadro1" style="display:none;">
                <div id="Div4" style=" float: left; position: relative;width: 1347px;top:100px;">
			        <div class="tituloLateral" style="border:0;height:120px;">
				        <div class="tit" style="border:0;height:120px;"></div>
				      
			        </div>
			       
			        <div class="lineareverso">
				        <div class="nro" >06</div>
				        <div style="position:relative;float:left;height:100%;width:280px;border-right:1px solid;text-align:center;"> Calle</div>
				        <div style="position:relative;float:left;height:100%;width:80px;border-right:1px solid;text-align:center;"> Nro</div>
                        <div style="position:relative;float:left;height:100%;width:80px;border-right:1px solid;text-align:center;"> Of.Dpto</div>
                        <%--<div style="position:relative;float:left;height:100%;width:300px;border-right:1px solid;text-align:center;"> Ciudad</div>--%>
                        <div class="nro" >08</div>
                        <div style="position:relative;float:left;height:100%;width:300px;border-right:1px solid;text-align:center;"> Comuna</div>
                        <div style="position:relative;float:left;height:100%;width:105px;border-right:1px solid;text-align:center;"> Región</div>
				      

			        </div>
			        <div class="lineareverso">
				        <div style="position:relative;float:left;height:100%;width:320px;border-right:1px solid;">
					         <textarea class="form-control" runat="server" rows="1" id="cod06_calle" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
                        <div style="position:relative;float:left;height:100%;width:80px;border-right:1px solid;">
					         <textarea class="form-control" rows="1"  runat="server" id="cod06_nro" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
                        <div style="position:relative;float:left;height:100%;width:80px;border-right:1px solid;">
					         <textarea class="form-control" rows="1"  runat="server" id="cod06_dpto" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"  readonly ></textarea>
				        </div>
                        <%-- <div style="position:relative;float:left;height:100%;width:300px;border-right:1px solid;">
					         <textarea  runat="server" class="form-control" rows="1" id="cod06_ciudad" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   ></textarea>
				        </div>--%>
                         <div style="position:relative;float:left;height:100%;width:340px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod08_comuna" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
                         <div style="position:relative;float:left;height:100%;width:105px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod08_region" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
				      
			        </div>
			      <div class="lineareverso">
				        <div class="nro" >09</div>
				        <div style="position:relative;float:left;height:100%;width:150px;border-right:1px solid;text-align:center;"> Teléfono</div>
                        <div class="nro" >55</div>
				        <div style="position:relative;float:left;height:100%;width:160px;border-right:1px solid;text-align:center;"> Correo electrónico</div>
                        <div class="nro" >13</div>
                        <div style="position:relative;float:left;height:100%;width:350px;border-right:1px solid;text-align:center;"> Actividad, Profesión o Giro del Negocio</div>
                       <div class="nro" >14</div>
                        <div style="position:relative;float:left;height:100%;width:105px;border-right:1px solid;text-align:center;"> Cód. Actividad Económica</div>
                        
			        </div>
                    <div class="lineareverso" style="left:34px">
				        <div style="position:relative;float:left;height:100%;width:190px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod09" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"  readonly></textarea>
				        </div>
                        <div style="position:relative;float:left;height:100%;width:200px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod55" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
                        <div style="position:relative;float:left;height:100%;width:390px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod13" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"  readonly></textarea>
				        </div>
                         <div style="position:relative;float:left;height:100%;width:145px;border-right:1px solid;">
					         <textarea class="form-control"  runat="server" rows="1" id="cod14" onfocus="seleccionar(this.id)" style="text-align: right;height:38px;resize: none;font-size: 17px;"   readonly></textarea>
				        </div>
                        
				      
			        </div>
			       
		        </div>

            </div>
            <!--Fín Línea 6-->

        </div>



    </div>
    <div class="clearFix"></div>
     <div style="position:relative;float:left;width:100%;height:70px;background-color:#000000;"></div>
   
    

         

</body>
</html>
