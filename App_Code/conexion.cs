using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for conexion
/// </summary>
public class conexion
{
    string datosConexion = "";
    ArrayList valores = new ArrayList();
    string id_user = "";
    string nombre_usuario = "";
    string perfil = "";
    string grupo = "";

	public  conexion()
	{
        datosConexion = "Data Source = localhost; user id = fjarias; password = 123;"
           + "Initial Catalog = formulario22 ; Integrated Security=false; ";
       
	}



    public string Getconexion() {

        return datosConexion;
    }


    public bool conectToDB() {
        try
        {
             SqlConnection con = new SqlConnection(datosConexion);
             con.Open();
             //con.Close();   
             return true;
        }
        catch (Exception)
        {
            return false;
            throw;
        }
    }

    public ArrayList login(string username, string pass) {

       
           
            SqlConnection con = new SqlConnection(datosConexion);
            con.Open();
            string textoCmd = "";
            textoCmd = "SELECT * FROM [usuarios] where username ='" + username + "' and pass = '" + pass + "'";
            SqlCommand cmd = new SqlCommand(textoCmd, con);
            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
               
                while (reader.Read())
                {
                     id_user = reader["id"].ToString();
                     nombre_usuario = reader["nombre"].ToString();
                     perfil = reader["perfil"].ToString();
                     grupo = reader["grupo"].ToString();
                }
                reader.Close();
                con.Close();
                valores.Add(id_user);
                valores.Add(nombre_usuario);
                valores.Add(perfil);
                valores.Add(grupo);

                return valores;
            }

            catch (SqlException a)
            {
                con.Close();
               
                return valores;
            }
        }


   
    


}