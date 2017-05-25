<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
     <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
     <script type="text/javascript" src="../js/jquery_form_plugin.js"></script>
     <script type="text/javascript" src="../js/scripts.js"></script>
     <link href="../css/style.css" rel="stylesheet" type="text/css" />
     <script src="../js/jquery.corner.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/sweetalert.css"/>
    <script src="../js/sweetalert.min.js"></script>
    <script src="../js/bootstrap.js"></script>
      <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
     <script src="../js/bootstrap.js"></script>
     <script type ="text/javascript">
         $(document).on('ready', function () {

             $("#texto_f22").fadeIn(1000, function () {
                 $('#img_f22').show('slow')
             });
             //$('#img_f22').show('slow')
             //$('#texto_f22').toggle('5000')
             traer_actividades();
             traer_regiones();
             traer_bancos();
             traer_revisores();
             traer_aprobadores();
         });
    </script>
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
<body >
     <form  runat="server" method="post">
     <div style="display:none;" id="rut_correcto">1</div>
     <div style="display:none;" id="mail_correcto">1</div>
    
         <asp:ScriptManager runat="server" />
        <div runat="server" id="id_user" style="display:none;"></div>
        <div runat="server" id="perfil" style="display:none;"></div>
        <div runat="server" id="grupo" style="display:none;"></div>
   
    <!--lightbox cargando-->
    <div id="light" class="white_content" style="width:200px;top:20%;margin-left: -100px;height:225px;"> 
        <div style="position: relative;float: left;left: 50%;margin-left: -64px;top: 50px;">  <img src="../img/ajax-loader.gif" /> </div>
        <div style="clear:both;"></div>
    </div>
    <!--lightbox crear contribuyente-->
    <div id="crear_contribuyente" class="creacion_contribuyente" > 
        <div style="border:1px solid #86bc25;color: #fff;position:relative;float:left;height:35px;width:100%;background-color:#757887;text-align:center;font-size:18px;">
            Crear Contribuyente
            <div style="position:relative;float:right;cursor:pointer;" onclick="cerrar_crear()">
                <img src="../img/cerrar.png"  />
            </div>
        </div>
        <div style="position:relative;float:left;height:50px;width:100%;top:20px;">
            <div style="position:relative;float:left;width:100%;">
                <div style="position:relative;float:left;left:20px;width:130px;">Rut</div>
                <div style="position:relative;float:left;left:30px;width:30px;display:none;">Dv</div>
                <div style="position:relative;float:left;left:40px;width:270px;">Apellido Paterno o Razón Social.</div>
                <div style="position:relative;float:left;left:50px;width:240px;">Apellido Materno</div>
                <div style="position:relative;float:left;left:60px;width:270px;">Nombres</div>
            </div>

            <div style="position:relative;float:left;left:20px;">
                <input id="rut_cont" type="text" name="name" value="" style="width:130px; height:30px;border:1px solid #86bc25;" maxlength="12"  />
            </div>
            <div style="position:relative;float:left;left:30px;display:none;">
                <input id="dv_cont" type="text" name="name" value="" style="width:30px; height:30px;border:1px solid #86bc25; " maxlength="1" />
            </div>
             <div style="position:relative;float:left;left:40px;">
                <input id="razon_social" type="text" name="name" value="" style="width:270px; height:30px;border:1px solid #86bc25; " maxlength="50" />
            </div>
            <div style="position:relative;float:left;left:50px;">
                <input id="ap_materno" type="text" name="name" value="" style="width:240px; height:30px;border:1px solid #86bc25; "  maxlength="50" />
            </div>
            <div style="position:relative;float:left;left:60px;">
                <input id="nombres" type="text" name="name" value="" style="width:270px; height:30px;border:1px solid #86bc25; "  maxlength="100" />
            </div>
            
            <div style="position:relative;float:left;width:100%;margin-top:10px;">
                <div style="position:relative;float:left;left:20px;width:140px;">Código Actividad</div>
                <div style="position:relative;float:left;left:30px;width:400px;">Actividad</div>
               
            </div>
            <div  style="position:relative;float:left;left:20px;">
                <select  id="cod_act_econ" style="width:140px; height:30px; border:1px solid #86bc25;" onchange="llenar_nombre_act()">
                    <option value="value" >text</option>
                </select>
               
            </div>
            <div style="position:relative;float:left;left:30px;">
                <input id="nom_act" type="text" name="name" value="CULTIVO DE TRIGO" style="width:800px; height:30px;border:1px solid #86bc25; " readonly="true" />
            </div>



            <div style="position:relative;float:left;width:100%;margin-top:10px;">
                <div style="position:relative;float:left;left:20px;width:300px;">Calle</div>
                <div style="position:relative;float:left;left:30px;width:70px;">Número</div>
                <div style="position:relative;float:left;left:40px;width:70px;">Of./Depto.</div>
                <div style="position:relative;float:left;left:50px;width:140px;">Región</div>
                <div style="position:relative;float:left;left:60px;width:140px;">Comuna</div>
            </div>
            <div style="position:relative;float:left;left:20px;">
                <input id="calle" type="text" name="name" value="" style="width:300px; height:30px;border:1px solid #86bc25; " maxlength="50" />
            </div>
            <div style="position:relative;float:left;left:30px;">
                <input id="numero" type="text" name="name" value="" style="width:70px; height:30px; border:1px solid #86bc25;"  />
            </div>
             <div style="position:relative;float:left;left:40px;">
                <input id="depto" type="text" name="name" value="" style="width:70px; height:30px;border:1px solid #86bc25; "  />
            </div>
            <div style="position:relative;float:left;left:50px;">
                <select id="region" onchange="llenar_comunas()" style="width:140px; height:30px;border:1px solid #86bc25; ">
                    <option value="value">text</option>
                </select>
            </div>
            <div style="position:relative;float:left;left:60px;">
                 <select id="comuna" style="width:330px; height:30px;border:1px solid #86bc25; ">
                    <option value="value">text</option>
                </select>
            </div>


             <div style="position:relative;float:left;width:100%;margin-top:10px;">
                <div style="position:relative;float:left;left:20px;width:380px;">Correo</div>
                <div style="position:relative;float:left;left:110px;width:300px;">Telefono</div>
              
            </div>
            <div style="position:relative;float:left;left:20px;">
                <input id="mail" type="text" name="name" value="" style="width:380px; height:30px;border:1px solid #86bc25; " maxlength="100" onblur="validar_mail()" />
            </div>
            <div style="position:relative;float:left;left:110px;">
                <input id="telefono" type="text" name="name" value="" style="width:480px; height:30px; border:1px solid #86bc25;"  maxlength="7" />
            </div>


             <div style="position:relative;float:left;width:100%;margin-top:10px;">
                <div style="position:relative;float:left;left:20px;width:300px;">Nombre Banco</div>
                <div style="position:relative;float:left;left:30px;width:300px;">Tipo Cuenta</div>
                 <div style="position:relative;float:left;left:40px;width:300px;">Número Cuenta</div>
              
            </div>
            <div style="position:relative;float:left;left:20px;">
                <select id="bancos"  style="width:300px; height:30px;border:1px solid #86bc25; ">
                    <option value="value">text</option>
                </select>
            </div>
            <div  style="position:relative;float:left;left:30px;">
               <select  id="tpo_cuenta" style="width:300px; height:30px;border:1px solid #86bc25; ">
                    <option value="CUENTA DE AHORRO">CUENTA DE AHORRO</option>
                    <option value="CUENTA VISTA">CUENTA VISTA</option>
                    <option value="CUENTA CORRIENTE">CUENTA CORRIENTE</option>
                    <option value="CUENTA RUT">CUENTA RUT</option>
                </select>
            </div>
             <div  style="position:relative;float:left;left:40px;">
                <input id="nro_cta" type="number" name="name" value="" style="width:330px; height:30px;border:1px solid #86bc25; " maxlength="15" />
            </div>

              <div style="position:relative;float:left;width:100%;margin-top:10px;">
                <div style="position:relative;float:left;left:20px;width:300px;">Perfíl Contribuyente</div>
                <div style="position:relative;float:left;left:30px;width:200px;">Rut Contador</div>
                <div style="position:relative;float:left;left:40px;width:30px;display:none;">Dv</div>
                <div style="position:relative;float:left;left:50px;width:150px;">Rut Representante</div>
                <div style="position:relative;float:left;left:60px;width:30px;display:none;">Dv</div>
              
            </div>
            <div style="position:relative;float:left;left:20px;">
                <select id="perfil_cont"  style="width:300px; height:30px; border:1px solid #86bc25;">
                     <option value="0" selected>NINGUNO</option>
                    <option value="1">SOCIO EXTRANJERO /IMPUESTO ADICIONAL-DL600</option>
                    <option value="2">SOCIO EXTRANJERO /DL600</option>
                    <option value="3">AGENCIA /IMPUESTO ADICIONAL-DL600</option>
                    <option value="4">AGENCIA /DL600</option>
                </select>
            </div>
            <div  style="position:relative;float:left;left:30px;">
                <input id="rut_contador" type="text" name="name" value="" style="width:200px; height:30px;border:1px solid #86bc25; " maxlength="12"  />
            </div>
            <div  style="position:relative;float:left;left:40px;display:none;">
                <input id="dv_contador" type="text" name="name" value="" style="width:30px; height:30px; border:1px solid #86bc25;" maxlength="1"  />
            </div>
            <div style="position:relative;float:left;left:50px;">
                <input id="rut_representante" type="text" name="name" value="" style="width:200px; height:30px; border:1px solid #86bc25;" maxlength="12" />
            </div>
            <div style="position:relative;float:left;left:60px;display:none;">
                <input id="dv_representante" type="text" name="name" value="" style="width:30px; height:30px;border:1px solid #86bc25; "  maxlength="1" />
            </div>


             <div style="position:relative;float:left;width:100%;margin-top:10px;">
                
                <div style="position:relative;float:left;left:20px;width:150px;">Seleccione Forma de Pago</div>
                <div style="position:relative;float:left;left:50px;width:270px;">¿Sociedad de profesionales de 2da categoría? </div>
            </div>
           
            <div style="position:relative;float:left;left:20px;">
               <select id="forma_pago" style="width:150px; height:30px; border:1px solid #86bc25;">
                    <option value="PEC">PEC</option>
                    <option value="PEL">PEL</option>
                </select>
            </div>
            <div style="position:relative;float:left;left:50px;">
               <select id="soc_prof"  style="width:270px; height:30px; border:1px solid #86bc25;">
                    <option value="1">SÍ</option>
                    <option value="0">NO</option>
                </select>
            </div>
            <div style="clear:both;"></div>
            <div style="float: left;left: 50%; margin-left: -110px;position: relative;top: 70px;width: 220px;">
                <div style="position:relative;float:left;">
                    <input type="button" name="name" value="Crear" onclick="crear_contribuyente()" style="width:100px;height:30px;border:1px solid #86bc25;" />
                </div>
                 <div style="position:relative;float:left;left:5px;">
                    <input type="button" name="name" value="Cancelar" onclick="cerrar_crear()" style="width:100px;height:30px;border:1px solid #86bc25;" />
                </div>
            </div>
         </div>
       </div>

       <div id="upload_balances" > 
           <div  class="panel panel-default">
               <div class="panel-heading">
                <h3 class="panel-title">Carga de balances</h3>
               </div>
               <div class="panel-body">
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                           <ContentTemplate>

                               <asp:Label Text="asdsad" runat="server" ID="name_file" />
                               <asp:FileUpload ID="uploadExcel" runat="server"></asp:FileUpload>
                               <asp:Button ID="btnUpload" runat="server" Text="Upload Image" OnClick="btnUpload_Click" />
                               <br />
                               <asp:Button ID="btnProcessData" runat="server" Text="Process Data" OnClick="btnProcessData_Click" />
                               <br />
                               <asp:Label ID="lblMessage" runat="server" Text="Image uploaded successfully."  Visible="false"></asp:Label>
                               <br />
                               <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                                   <ProgressTemplate>
                                       Please wait image is getting uploaded....
                                   </ProgressTemplate>

                               </asp:UpdateProgress>
                               
                           </ContentTemplate>
                           <Triggers>
                               <asp:PostBackTrigger ControlID="btnUpload"  />
                               <asp:AsyncPostBackTrigger ControlID="btnProcessData" />
                           </Triggers>
                </asp:UpdatePanel>

               </div>
            </div>
       </div>
    
    

 <div id="crear_f22" class="creacion_contribuyente" style="z-index:100000; font-size: 12px;box-shadow: 3px 2px 40px #999;background-color:#E6E6E6; padding:0; width:300px;top:5%;margin-left: -150px;left:50%;border: 1px solid #000;height:375px;cursor:default;border-radius:9px;"> 
        <div style="color: #fff;position:relative;float:left;height:35px;width:100%;background-color:#000000;text-align:center;font-size:22px;">
            Crear Formulario 22 
            <div style="position:relative;float:right;cursor:pointer;" onclick="cerrar_crear()">
                <img src="../img/cerrar.png"  />
            </div>
        </div>
        <div id="contribuyente" style="display:none;"></div>
         <div style="clear:both;"></div>
            <div style="float: left; left: 20px; margin-top: 30px;position: relative;width: 235px;">
                <a style="color:red;text-decoration:none;">*Debe seleccionar Revisor y Aprobador para poder crear el formulario 22.</a>
            </div>
     <div style="clear:both;"></div>
        <div style="position:relative;float:left;height:50px;width:100%;top:20px;">
             <div style="position:relative;float:left;left:20px;width:250px;">Seleccione Revisor</div>
             
             <div style="clear:both;"></div>
            <div style="position:relative;float:left;left:20px;">
                <select id="revisores"  style="width:250px; height:30px; ">
                    <option value="value">text</option>
                </select>
            </div>
             <div style="clear:both;"></div>
            <div style="position:relative;float:left;left:20px;width:250px;margin-top: 20px;">Seleccione Aprobador</div>
             <div style="clear:both;"></div>
            <div style="position:relative;float:left;left:20px;">
               <select id="aprobadores"  style="width:250px; height:30px; ">
                    <option value="value">text</option>
                </select>
            </div>
            
            <div style="clear:both;"></div>
            <div style="float: left;left: 50%; margin-left: -110px;position: relative;top: 70px;width: 220px;">
                <div style="position:relative;float:left;">
                    <input type="button" name="name" value="Crear" onclick="crear_f22()" style="width:100px;height:30px;" />
                </div>
                 <div style="position:relative;float:left;left:5px;">
                    <input type="button" name="name" value="Cancelar" onclick="cerrar_crear()" style="width:100px;height:30px;" />
                </div>
            </div>
         </div>
       </div>



    
     <div id="fade" class="black_overlay" onclick="cerrar_crear()">    </div>
	 <div id="header_home">
        <div style="position: relative;float: left;left: 80px;top: 25px;">  <img src="../img/logo.png"  width="165px"   /> </div>
        <div style="position:relative;float:left;color:white; font-size: 32px; top:25px;left:8%;">Deloitte <a style="color:#86BC25;text-decoration: none;">F22</a></div>
         <div style="float:left;position: absolute;top: 70px;z-index: 1;left:72px;">
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
							        <li><a onclick="abrir_f22(2017)" style="cursor:pointer;">AT 2017</a></li>
							        <li><a onclick="abrir_f22(2016)" style="cursor:pointer;">AT 2016</a></li>
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
     </div>
    <div class="clearFix"></div>
    <div id="body_intro_f22">
        <div style="position:relative;float:left;height:800px;width:200px;background-color:#ffffff;border:1px solid;display:none;"></div>
        <div id="texto_f22" style="position:relative;float:left;height:800px;width:510px;display:none;">
            <div style="float: left;font-weight: bold;left: 80px;position: relative;margin-top: 210px;width: 350px;">
                Bienvenido al sistema de Declaración de Impuestos Anuales a la Renta – Formulario 22 
            </div>
            <div style="clear:both;"></div>
            <div style="float: left;left: 80px;position: relative;top: 65px;width: 400px;">
               En este módulo podrás preparar la declaración de los Impuestos Anuales a la Renta para empresas, personas naturales y otros contribuyentes sujetos a los distintos regímenes de tributación 
            </div>
            
        </div>
        <div id="texto_nuevo_f22" style="position:relative;float:left;height:800px;width:510px;display:none;">
            <div id="txt_f22" style="color: #86bc25;float: left;font-size: 32px; font-weight: bold;left: 80px; margin-top: 50px;position: relative; text-shadow: 1px 1px #000;width: 350px;">
                Contribuyentes
            </div>
            
            
        </div>
        <div style="position:relative;float:left;height:800px;width:800px;">
            <div style="position:relative;float:left;top:30px;">
                <img src="../img/f22/background.png" width="500" alt="Alternate Text" id="img_f22" style="display:none;" />
                
                <div  id="grid_nuevo_f22" style="display:none;position:relative;float:left;top:35px;">
                    <div style="position:relative;float:left;">
                        <input type="text" name="name" value="" placeholder="Buscar..." />
                    </div>
                    <div style="float: left;font-size: 16px;font-weight: bold;left: 400px; position: relative;">
                        <a style="color:#86BC25;text-decoration:none;">AT </a><a id="at"></a>
                    </div>
                    <div  class="datagrid" id="tbl_crear_f22" style="display:none;">
                         <table>
                            <thead>
                              <tr>
                                <th>Rut</th>
                                <th>Contribuyente</th>
                                <th>Fecha Creación</th>
                               
                              </tr>
                            </thead>
                            <tbody id="contribuyentes">
                               
                            </tbody>
                         </table>
                    </div>
                    <div  class="datagrid" id="tbl_abrir_f22" style="display:none;">
                         <table>
                            <thead>
                              <tr>
                                <th>Rut</th>
                                <th>Contribuyente</th>
                                <th>Fecha Creación</th>
                               
                              </tr>
                            </thead>
                            <tbody id="contribuyentes_f22">
                              
                              
                            </tbody>
                         </table>
                    </div>
                </div>

               
                    

            </div>
        </div>
        <div class="clearFix"></div>
        <div style="position:relative;float:left;width:100%;height:70px;background-color:#000000;"></div>

    </div>
    
    
  </form>  
    

         

</body>
</html>
