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

public partial class _Default : System.Web.UI.Page
{

   

    protected void Page_Load(object sender, EventArgs e)
    {

        //verifica si usuario inicio sesion y que contribuyente y at pasen como parametro
        String id_contribuyente = Request.QueryString["contribuyente"];
        String at = Request.QueryString["at"];

       
        if (Session["id_usuario"] == null || id_contribuyente == null || at == null)
        {

            Response.Redirect("../default.aspx");

        }
        else {

            String perfil_var = Session["perfil"].ToString();
            String grupo_var = Session["grupo"].ToString();
            String id_user_var = Session["id_usuario"].ToString();

            perfil.InnerHtml = perfil_var;
            grupo.InnerHtml = grupo_var;
            id_user.InnerHtml = id_user_var;
            id_contri.InnerHtml = id_contribuyente;
            a_trib.InnerHtml = at;

            //validamos que usuario tenga relacion con el contribuyente 
            if ( validacion_user_form(id_user_var, id_contribuyente, at) == false)
            {

                Response.Redirect("../default.aspx");

            }


            nombre_contribuyente.Text = traerNombreContribuyente(id_contribuyente);
            a_tributario.Text = "Año tributario "+at;
           

        }

        

    }


    [WebMethod]
    public static string llenarComuna(string codigo)
    {
        funciones inicializar = new funciones();
        return inicializar.llenarComuna(codigo);

    }

    [WebMethod]
    public static Boolean validacion_user_form(string id_user, string id_contribuyente, string at)
    {
        funciones inicializar = new funciones();
        return inicializar.validacion_user_form(id_user, id_contribuyente, at);

    }



    [WebMethod]
    public static string traerReg()
    {
        funciones inicializar = new funciones();
        return inicializar.traerReg();

    }


    [WebMethod]
    public static string traerNombreContribuyente(String id_contribuyente)
    {
        funciones inicializar = new funciones();
        return inicializar.traerNombreContribuyente(id_contribuyente);

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
    public static string cargarContribuyentesSinF22(string id_user, string at)
    {
        funciones inicializar = new funciones();
        return inicializar.cargarContribuyentesSinF22(id_user, at);
    }

    [WebMethod]
    public static string crear_f22(string id_user, string id_revisor, string id_aprobador, string at, string id_contribuyente)
    {
        funciones inicializar = new funciones();
        return inicializar.crear_f22(id_user, id_revisor, id_aprobador, at, id_contribuyente);

    }

    [WebMethod]
    public static string save_nueva_linea1(int id_contri, int id_user, int a_trib, string sociedad, Int64 v1, Int64 v2, Int64 v3, Int64 v4, Int64 v5, Int64 v7, Int64 v8, Int64 v9, Int64 v10, string v11, int linea)
    {
        funciones inicializar = new funciones();
        return inicializar.save_nueva_linea1(id_contri, id_user, a_trib, sociedad, v1, v2, v3, v4, v5,  v7, v8, v9, v10, v11, linea);

    }

    [WebMethod]
    public static string save_codigo(Int64 valor, int codigo, int id_contri, int id_user, string a_trib, int anverso_reverso)
    {
        funciones inicializar = new funciones();
        return inicializar.ingresar_codigo(valor, codigo, id_contri, id_user, a_trib, anverso_reverso);

    }

    [WebMethod]
    public static Hashtable cargar_info(int id_contri, int id_user, int a_trib)
    {
        funciones inicializar = new funciones();

        return inicializar.cargar_info( id_contri, id_user, a_trib);

    }
    [WebMethod]
    public static string save_nueva_linea4(int id_contri,int id_user,int a_trib,string sociedad,int v1,int v2,int v3,string v4)
    {
        funciones inicializar = new funciones();
        return inicializar.save_nueva_linea4( id_contri, id_user, a_trib, sociedad, v1, v2, v3, v4);

    }

    [WebMethod]
    public static string save_nueva_linea8(int id_contri, int id_user, int a_trib, string sociedad, int v1, int v2, int v3, int v4, int v5)
    {
        funciones inicializar = new funciones();
        return inicializar.save_nueva_linea8(id_contri, id_user, a_trib, sociedad, v1, v2, v3, v4,v5);

    }
    [WebMethod]
    public static string save_nueva_linea2(int id_contri, int id_user, int a_trib, string sociedad, int v1, int v2, int v3, int v4, int v5, int v6, int v7, int v8, int v9,int trasladar)
    {
        funciones inicializar = new funciones();
        return inicializar.save_nueva_linea2(id_contri, id_user, a_trib, sociedad, v1, v2, v3, v4, v5, v6, v7, v8, v9, trasladar);

    }
   
    
        

    }

   