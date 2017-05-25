using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Web.Services;
using System.Collections;
using System.Threading;
using System.IO;
using LinqToExcel;


public partial class _Default : System.Web.UI.Page
{

   

    protected void Page_Load(object sender, EventArgs e)
    {

        //verifica si usuario inicio sesion

        if (Session["id_usuario"] == null)
        {

            Response.Redirect("../default.aspx");

        }
        else {

            perfil.InnerHtml = Session["perfil"].ToString();
            grupo.InnerHtml = Session["grupo"].ToString();
            id_user.InnerHtml = Session["id_usuario"].ToString();
        }

        

    }

   

    [WebMethod]
    public static string llenarComuna(string codigo)
    {
        funciones inicializar = new funciones();
        return inicializar.llenarComuna(codigo);
       
    }



    [WebMethod]
    public static string traerReg()
    {
        funciones inicializar = new funciones();
        return inicializar.traerReg();

    }



    [WebMethod]
    public static string traerBcos()
    {
        funciones inicializar = new funciones();
        return inicializar.traerBcos();

    }



    [WebMethod]
    public static string traerAprobadores(string grupo)
    {
        funciones inicializar = new funciones();
        return inicializar.traerAprobadores(grupo);

    }



    [WebMethod]
    public static string traerRevisores(string grupo)
    {
        funciones inicializar = new funciones();
        return inicializar.traerRevisores(grupo);

    }



    [WebMethod]
    public static string traerAct()
    {
        funciones inicializar = new funciones();
        return inicializar.traerAct();

    }

    [WebMethod]
    public static string Crear_contribuyente(string grupo, string id_user, string rut_cont, string razon_social, string ap_materno, string nombres, string cod_act_econ, string nom_act, string calle, string numero, string depto, string region, string comuna, string mail, string telefono, string bancos, string tpo_cuenta, string nro_cta, string perfil_cont, string rut_contador, string rut_representante, string forma_pago, string soc_prof)
    {
        funciones inicializar = new funciones();
        return inicializar.Crear_contribuyente(grupo, id_user, rut_cont, razon_social, ap_materno, nombres, cod_act_econ, nom_act, calle, numero, depto, region, comuna, mail, telefono, bancos, tpo_cuenta, nro_cta, perfil_cont, rut_contador, rut_representante, forma_pago, soc_prof);

    }



    [WebMethod]
    public static string cargarContribuyentesSinF22(string grupo, string at)
    {
        funciones inicializar = new funciones();
        return inicializar.cargarContribuyentesSinF22(grupo, at);
    }

    [WebMethod]
    public static string crear_f22(string id_user, string id_revisor, string id_aprobador, string at, string id_contribuyente)
    {
        funciones inicializar = new funciones();
        return inicializar.crear_f22(id_user, id_revisor, id_aprobador, at, id_contribuyente);

    }

     [WebMethod]
    public static string cargarContribuyentesConF22(string id_user, string at)
    {
        funciones inicializar = new funciones();
        return inicializar.cargarContribuyentesConF22(id_user, at);
    }

    [WebMethod]
     public static string upload_balance_excel(string file)
     {
         return "sadsadsadsadsa";
        
     }


    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (uploadExcel.HasFile)
        {
            string extension = Path.GetExtension(uploadExcel.FileName);
            if (extension.Equals(".xls") || extension.Equals(".xlsx") || extension.Equals(".csv"))
            {
                try
                {
                    string fileName = uploadExcel.FileName;
                    string ruta = Server.MapPath("~/balances/" + fileName);
                    uploadExcel.SaveAs(ruta);
                    // get the file
                    var excel = new ExcelQueryFactory(ruta);
                    // get sheets of file uploaded
                    var worksheetsList = excel.GetWorksheetNames();
                    string sheets = "";
                    foreach (var var in worksheetsList)
                    {
                        sheets = sheets + "," + var;
                    }
                    name_file.Text = sheets;
                }
                catch (Exception ex)
                {
                    name_file.Text = ex.Message.ToString();
                    
                }
            
            
            }

            else
            {
                name_file.Text = "Debe subir archivo Excel";
            }


            
           
        }


       
        ScriptManager.RegisterStartupScript(this, typeof(Page), "invocarfuncion3", "abrir_cargador_excel();", true);
    }

    protected void btnProcessData_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
        lblMessage.Visible = true;
    }
}

   