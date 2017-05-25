<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <title>Deloitte Tax Compliance.</title>
</head>
<body>
    <div id="light" class="white_content"> 
        <div style="position: relative;float: left;left: 50%;margin-left: -75px;top: 50px;">  <img src="img/ajax-loader.gif" /> </div>
        <div style="clear:both;"></div>
        <div style="position: relative;float: left;left: 50%;margin-left: -120px;top: 50px;">  <img src="img/logo.png"  width="165px"   /> </div>
    </div>
    <div id="fade" class="black_overlay"></div>
    <div id="header_suite">
        <div id="titulo_index">Deloitte <a style="color:#86bc25;text-decoration: none;">TaxCompliance</a>Suite.</div>
        <div class="logo_dtt"><img src="img/logo.png"  width="207"/></div>
    </div>
    <div id="caja-central-home">
        <div id="logo-home" >
            <img src="img/logo.png"/>
        </div>
        <div class="clearFix"></div>
     </div>
     <div id="contenido_index">
            <div style="float: left;left: 5%;position: relative;"><img src="img/index.png"  width="575"/> </div>
            <div style="position:relative;float:right;right:205px;width:400px;height:400px;top:60px;">
                 <form runat="server">
                    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
                    <div id="login" >
                        <div >
                            <div class="txt-log">Nombre de Usuario</div>
                            <div class="clearFix"></div>
                            <asp:TextBox type="text" id="username" runat="server" class="txt-log" style="color:#000000;border: 1px solid blue;border-radius: 10px;font-size: 20px;height: 32px;margin-bottom: 15px;width: 340px;"    required/>
                            <div class="clearFix"></div>
                            <div class="txt-log">Contraseña</div>
                            <div class="clearFix"></div>
                            <asp:textbox type="password" id="pass" runat="server" class="txt-log" style="color:#000000;border: 1px solid blue;border-radius: 10px;font-size: 20px;height: 32px;margin-bottom: 15px;width: 340px;"   required/>
                            <div class="clearFix"></div>
                            <asp:UpdatePanel runat="server" ID="crearGrupo" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:button Text="Iniciar Sesión" runat="server" ID="btn_login" style="border-radius:8px;position:relative;float:left;left:50px;top:20px;cursor:pointer;background: #012169  none repeat scroll 0 0; border: 2px solid #d0d0ce; color: #fff; display: table; font-size: 16px;line-height: 1.8;height:35px;width:200px; padding: 1px; vertical-align: middle;" onmouseover="over(3)" onmouseout="over(4)" OnClick="login" />
                                    <div class="clearFix"></div>
                                    <asp:Label runat="server"  ID="test" Visible="true" style="color:#ffffff; position:relative;float:left;top:20px;left:50px;"/>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger controlid="btn_login" eventname="Click" />
                                </Triggers>
                           </asp:UpdatePanel>
                           <div class="clearFix"></div>
                           <div style="color: #ffffff;float: left;font-size: 12px;font-weight: bold;left: 50px; position: relative;top: 40px;">By accesing this site, you confirm that this computer complies with your organization´s security policies</div>
                        </div>
                    </div>
                </form>
            </div>
           
    </div>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script src="js/jquery.corner.js"></script>
    <script type ="text/javascript">
        $(document).on('ready', function () {
            $("#logo-home").fadeOut(3000, function () {
                $('#caja-central-home').css('top', '70px');
                $('#contenido_index').fadeIn('slow');
                $('#header_suite').show('slow');
            });
        });
   </script>   
</body>
</html>
