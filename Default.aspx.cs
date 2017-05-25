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
        //verifica si usuario inicio sesion
        if (Session["id_usuario"] != null)
        {
            Response.Redirect("home.aspx");
        }
    }


    public void login(object sender, EventArgs e)   
    {
        if (validarLogin())
        {
            conexion conectar = new conexion();
            if (conectar.conectToDB())
            {
                ArrayList valores = conectar.login(username.Text, pass.Text);
                if (valores.Count == 1)
                {
                    test.Text = "usuario o clave invalida";
                }
                else
                {
                    string id_user = "";
                    string nombre = "";
                    string perfil = "";
                    string grupo = "";

                    for (int i = 0; i < valores.Count; i++)
                    {
                        id_user = valores[0].ToString();
                        nombre = valores[1].ToString();
                        perfil = valores[2].ToString();
                        grupo = valores[3].ToString();
                    }

                   if (valores[0].ToString() == "")
                    {
                        test.Text = "Usuario o clave inválida";  // Aca poner un lightbox usuario o clave inválida
                    }
                    else
                    {
                        Session["id_usuario"] = id_user;
                        Session["username"] = nombre;
                        Session["perfil"] = perfil;
                        Session["grupo"] = grupo;
                        Response.Redirect("home.aspx");
                    }
                }
            }
            else
            {
                test.Text = "error de conexion a la base de datos";  // Aca poner un lightbox de error de conexion a la base de datos
            }
        }
        
        
       

        
    }


    public bool validarLogin()
    {
      string user = username.Text;
      string pas = pass.Text;
      if (user.Length == 0 || pas.Length == 0)
      {
          return false;
      }
      return true;    
    }
       
 }
