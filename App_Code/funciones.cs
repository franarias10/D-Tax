using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class funciones
{


    public Hashtable cargar_info(int id_contri, int id_user, int a_trib) 
    {

        Hashtable lineas = new Hashtable();

        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [linea1_2_4_8_10] where id_contrib = '" + id_contri +"' and ano_trib = '"+ a_trib +"'";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            Hashtable linea1 = new Hashtable();
            Hashtable linea2 = new Hashtable();
            Hashtable linea4 = new Hashtable();
            Hashtable linea8 = new Hashtable();
            Hashtable linea10 = new Hashtable();
           int contador = 0;
           int contador2 = 0;
           int contador3 = 0;
           int contador4 = 0;
           int contador5 = 0;
            while (reader.Read())
            {
                if (reader["linea_origen"].ToString() == "1")
                {
                    linea1.Add("id" + contador, reader["id"].ToString());
                    linea1.Add("sociedad_" + contador, reader["sociedad"].ToString());
                    linea1.Add("v1_" + contador, reader["monto_afecto"].ToString());
                    linea1.Add("v2_" + contador, reader["monto_exento"].ToString());
                    linea1.Add("v3_" + contador, reader["incremento"].ToString());
                    linea1.Add("v4_" + contador, reader["cred_con_der_ret_ef"].ToString());
                    linea1.Add("v5_" + contador, reader["cred_sin_der_ret_ef"].ToString());
                    linea1.Add("v6_" + contador, reader["renta_presunta"].ToString());
                    linea1.Add("v7_" + contador, reader["exento_gbl_compl_con_der"].ToString());
                    linea1.Add("v8_" + contador, reader["exento_gbl_compl_sin_der"].ToString());
                    linea1.Add("v9_" + contador, reader["cred_imp_exter"].ToString());
                    linea1.Add("v10_" + contador, reader["imp_tasa_ad"].ToString());
                    linea1.Add("v11_" + contador, reader["emp_individual"].ToString());
                    contador = contador + 1;
                }
                if (reader["linea_origen"].ToString() == "2")
                {
                    linea2.Add("id" + contador4, reader["id"].ToString());
                    linea2.Add("sociedad_" + contador4, reader["sociedad"].ToString());
                    linea2.Add("v1_" + contador4, reader["monto_afecto"].ToString());
                    linea2.Add("v2_" + contador4, reader["monto_exento"].ToString());
                    linea2.Add("v3_" + contador4, reader["incremento"].ToString());
                    linea2.Add("v4_" + contador4, reader["cred_con_der_ret_ef"].ToString());
                    linea2.Add("v5_" + contador4, reader["cred_sin_der_ret_ef"].ToString());
                    linea2.Add("v6_" + contador4, reader["exento_gbl_compl_con_der"].ToString());
                    linea2.Add("v7_" + contador4, reader["exento_gbl_compl_sin_der"].ToString());
                    linea2.Add("v8_" + contador4, reader["cred_imp_exter"].ToString());
                    linea2.Add("v9_" + contador4, reader["imp_tasa_ad"].ToString());
                    contador4 = contador4 + 1;
                }
                if (reader["linea"].ToString() == "4" )
                {
                    linea4.Add("id" + contador2, reader["id"].ToString());
                    linea4.Add("sociedad_" + contador2, reader["sociedad"].ToString());
                    linea4.Add("v1_" + contador2, reader["cred_con_der_ret_ef"].ToString());
                    linea4.Add("v2_" + contador2, reader["cred_sin_der_ret_ef"].ToString());
                    linea4.Add("v3_" + contador2, reader["renta_presunta"].ToString());
                    linea4.Add("v4_" + contador2, reader["trasladar_lin41"].ToString());
                    contador2 = contador2 + 1;
                }
                if (reader["linea"].ToString() == "8")
                {
                    linea8.Add("id" + contador3, reader["id"].ToString());
                    linea8.Add("sociedad_" + contador3, reader["sociedad"].ToString());
                    linea8.Add("v1_" + contador3, reader["monto_exento"].ToString());
                    linea8.Add("v2_" + contador3, reader["incremento"].ToString());
                    linea8.Add("v3_" + contador3, reader["exento_gbl_compl_con_der"].ToString());
                    linea8.Add("v4_" + contador3, reader["exento_gbl_compl_sin_der"].ToString());
                    linea8.Add("v5_" + contador3, reader["imp_tasa_ad"].ToString());
                    contador3 = contador3 + 1;
                }
                if (Convert.ToInt32(reader["incremento"]) > 0 )
                {
                    if (reader["linea_origen"].ToString() == "1" && (reader["linea"].ToString() == "1"))
                    {
                        linea10.Add("id" + contador5, reader["id"].ToString());
                        linea10.Add("sociedad_" + contador5, reader["sociedad"].ToString());
                        linea10.Add("v1_" + contador5, reader["incremento"].ToString());

                        contador5 = contador5 + 1;
                    }

                    if (reader["linea_origen"].ToString() == "2")
                    {
                        linea10.Add("id" + contador5, reader["id"].ToString());
                        linea10.Add("sociedad_" + contador5, reader["sociedad"].ToString());
                        linea10.Add("v2_" + contador5, reader["incremento"].ToString());

                        contador5 = contador5 + 1;
                    }
                    if ((reader["linea_origen"].ToString() == "8" ) && (reader["linea"].ToString() == "8") || ((reader["linea_origen"].ToString() == "1") && (reader["linea"].ToString() == "8")))
                    {
                        linea10.Add("id" + contador5, reader["id"].ToString());
                        linea10.Add("sociedad_" + contador5, reader["sociedad"].ToString());
                        linea10.Add("v4_" + contador5, reader["incremento"].ToString());

                        contador5 = contador5 + 1;
                    }


                    
                }
             
            }
            linea1.Add("cantidad_lineas",contador);
            linea2.Add("cantidad_lineas", contador4);
            linea4.Add("cantidad_lineas",contador2);
            linea8.Add("cantidad_lineas", contador3);
            linea10.Add("cantidad_lineas", contador5);
            lineas.Add("linea1", linea1);
            lineas.Add("linea2", linea2);
            lineas.Add("linea4", linea4);
            lineas.Add("linea8", linea8);
            lineas.Add("linea10", linea10);
            reader.Close();
            con.Close();

        }

        catch (SqlException a)
        {
            con.Close();
        }

        Hashtable datos_f22 = new Hashtable();
        datos_f22.Add("lineas", lineas);


        con.Close();
        return datos_f22;

    }
   
	public funciones()
	{
		
	}

    public string estado_declaracion(string estado){
    
                 if (estado == "1")
                {
                    estado = "En proceso";
                }
                if (estado == "2")
                {
                    estado = "En Revisión";
                }
                if (estado == "3")
                {
                    estado = "En aprobación";
                }
                if (estado == "4")
                {
                    estado = "Aprobada";
                }
                if (estado == "5")
                {
                    estado = "Txt Generado";
                }
                if (estado == "6")
                {
                    estado = "Revisión Rechazada";
                }
                if (estado == "7")
                {
                    estado = "Aprobación Rechazada";
                }

            return estado;
    }

    public string usuario_creador_form(string id_user) {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [usuarios] where id = " + id_user;
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = reader["nombre"].ToString();

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    }


    public string cargarContribuyentes(string id_user, string perfil)
    {
        conexion conectar = new conexion();
        
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        if (perfil == "1")
        {
            textoCmd = "SELECT * FROM [contribuyentes] where (staff = " + id_user + "and estado = 1)";
        }
        if (perfil == "2")
        {
            textoCmd = "SELECT * FROM [contribuyentes] where (revisor = " + id_user + "and estado = 2) or (staff = " + id_user + " and estado = 1)";
        }
        if (perfil == "3")
        {
            textoCmd = "SELECT * FROM [contribuyentes] where (aprobador = " + id_user + " and estado = 3) or (staff = " + id_user + " and estado = 1 ) or (revisor = " + id_user + " and estado = 2) ";
        }
        if (perfil == "10")
        {
            textoCmd = "SELECT * FROM [contribuyentes]";
        }

        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            int valor = 0;
            int cant_contr = 0;
            while (reader.Read())
            {
                //funciones inicializar = new funciones();
                string id_contribuyente = reader["id"].ToString();
                string estado = reader["estado"].ToString();
                string user_creador_form = reader["staff"].ToString();
                string nombres = reader["nombres"].ToString() + " " + reader["ap_paterno_o_r_social"].ToString();
                user_creador_form = usuario_creador_form(user_creador_form);
                estado = estado_declaracion(estado);

                if (valor % 2 == 0)
                {
                    variable = variable + " <tr> <td>" + reader["rut"].ToString() + "<div class='edit'><a  href='#'   data-toggle='popover' data-trigger='hover' data-content='Editar Contribuyente'><img src='img/edit.png' style='width: 18px;' /></a></div> <div class='edit'><a  href='formulario.aspx?id_contribuyente="+id_contribuyente+"'    data-toggle='popover' data-trigger='hover' data-content='Ver Formulario'><img src='img/ver.png' style='width: 18px;' /></a></div></td> <td>" + nombres + "</td><td>" + estado + "</td> <td>" + user_creador_form + "</td></tr>";
                }
                else
                {

                    variable = variable + " <tr class='alt'> <td>" + reader["rut"].ToString() + "<div class='edit'><a  href='#'   data-toggle='popover' data-trigger='hover' data-content='Editar Contribuyente'><img src='img/edit.png' style='width: 18px;' /></a></div> <div class='edit'><a   href='formulario.aspx?id_contribuyente=" + id_contribuyente + "'    data-toggle='popover' data-trigger='hover' data-content='Ver Formulario'><img src='img/ver.png' style='width: 18px;' /></a></div></td> <td>" + nombres + "</td><td>" + estado + "</td> <td>" + user_creador_form + "</td></tr>";

                }

                valor = valor + 1;
                cant_contr = cant_contr + 1;


            }
            reader.Close();
            con.Close();

            if (cant_contr == 0)
            {
                variable = " <tr> <td>No tienes contribuyentes</td></tr>";
            }
            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    }

    public string cargarContribuyentesConF22(string id_user, string at)
    {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";

        textoCmd = "SELECT * FROM contribuyentes where id in  (select id_contribuyente from formulario22 where at = "+at+" and id_creador = "+id_user+")";
      

        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            int valor = 0;
            int cant_contr = 0;
            while (reader.Read())
            {
                //funciones inicializar = new funciones();
                string id_contribuyente = reader["id"].ToString();
                string estado = reader["estado"].ToString();
                string nombres = reader["nombres"].ToString() + " " + reader["ap_paterno_o_r_social"].ToString();


                variable = variable + "<tr onclick='abrir_formulario2_select("+id_contribuyente+","+at+")' onmouseover='cambiacolor_over(this)' onmouseout='cambiacolor_out(this)'> <td>" + reader["rut"].ToString() + "</td><td>" + nombres + "</td><td>" + reader["fecha_creacion"].ToString() + "</td></tr>";
               
                
               

                valor = valor + 1;
                cant_contr = cant_contr + 1;


            }
            reader.Close();
            con.Close();

            if (cant_contr == 0)
            {
                variable = " <tr> <td>No tienes contribuyentes para seleccionar este Año tributario</td></tr>";
            }
            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    }




    public string cargarContribuyentesSinF22(string grupo, string at)
    {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";

        textoCmd = "SELECT * FROM contribuyentes where id not in (select id_contribuyente from formulario22 where at = "+at+") and grupo =" + grupo;
       

        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            int valor = 0;
            int cant_contr = 0;
            while (reader.Read())
            {
                //funciones inicializar = new funciones();
                string id_contribuyente = reader["id"].ToString();
                string estado = reader["estado"].ToString();
                string nombres = reader["nombres"].ToString() + " " + reader["ap_paterno_o_r_social"].ToString();


                variable = variable + "<tr onclick='abrir_crear_f22("+id_contribuyente+")' onmouseover='cambiacolor_over(this)' onmouseout='cambiacolor_out(this)'> <td>" + reader["rut"].ToString() + "</td><td>" + nombres + "</td><td>" + reader["fecha_creacion"].ToString() + "</td></tr>";
               
                
               

                valor = valor + 1;
                cant_contr = cant_contr + 1;


            }
            reader.Close();
            con.Close();

            if (cant_contr == 0)
            {
                variable = " <tr> <td>No tienes contribuyentes para seleccionar este Año tributario</td></tr>";
            }
            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    }

    public string llenarComuna(string codigo) {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [comunas] where cod_region = " + codigo;
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["nombre"].ToString() + "'>" + reader["nombre"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    }


    public string traerReg() {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [regiones] order by codigo Asc";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["codigo"].ToString() + "'>" + reader["nombre"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    }



    public string traerBcos() {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [bancos] order by id Asc";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["nombre"].ToString() + "'>" + reader["nombre"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    }


    public string traerAprobadores(string grupo) {

        conexion conectar = new conexion();


        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [usuarios] where (perfil = 3 and grupo =" + grupo + ")";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["id"].ToString() + "'>" + reader["nombre"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    
    
    }




    public string traerRevisores(string grupo) {

        conexion conectar = new conexion();


        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [usuarios] where (perfil = 2 and grupo =" + grupo + ")";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["id"].ToString() + "'>" + reader["nombre"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    }





    public string traerAct() {

        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [cod_act_economica] order by codigo Asc";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
                variable = variable + "<option   value='" + reader["nombre"].ToString() + "'>" + reader["codigo"].ToString() + "</option>";

            }
            reader.Close();
            con.Close();


            return variable;
        }

        catch (SqlException a)
        {
            con.Close();

            return "Ocurrió un error";
        }
    
    }



    public bool verificar_anverso(string id_contrib,string at)
    {

       
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT id FROM [anverso] where (id_contribuyente = '" + id_contrib +"' and at ='"+at+"')";
        SqlCommand cmd = new SqlCommand(textoCmd, con);

        SqlDataReader reader = cmd.ExecuteReader();
        string variable = "";
        while (reader.Read())
        {
            variable = reader["id"].ToString();

        }
        reader.Close();
        con.Close();

        if (variable == "")
        {
            return false;
        }
        else
        {
            return true;
        }



    }



    public bool verificar_formulario(string id_contrib) {

        //falta para el at 2018 verificar si existe formulario creado por año
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT id FROM [formulario22] where id_contribuyente = '"+id_contrib+"'";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
       
            SqlDataReader reader = cmd.ExecuteReader();
            string variable = "";
            while (reader.Read())
            {
              variable =  reader["id"].ToString();

            }
            reader.Close();
            con.Close();

            if (variable == "")
            {
                return false;
            }
            else
            {
                return true;
            }
        

        
    }

    public void crear_formulario(string id_contrib, string at) {

        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [formulario22] (id_contribuyente,at,estado ) VALUES ('" + id_contrib + "','"+at +"','1');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        cmd.ExecuteNonQuery();
    
    }


    public string save_nueva_linea2(int id_contri, int id_user, int a_trib, string sociedad, int v1, int v2, int v3, int v4,int v5, int v6, int v7, int v8, int v9,int trasladar)
    {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [linea1_2_4_8_10] (id_contrib,id_user,linea,sociedad,ano_trib,monto_afecto,monto_exento,incremento,cred_con_der_ret_ef,cred_sin_der_ret_ef,exento_gbl_compl_con_der,exento_gbl_compl_sin_der,cred_imp_exter,imp_tasa_ad,linea_origen ) VALUES ('" + id_contri + "','" + id_user + "','"+trasladar+"','" + sociedad + "','" + a_trib + "','"+ v1+"','"+v2+"','"+v3+"','" + v4 + "','" + v5 + "','" + v6 + "','"+v7+"','"+v8+"','"+v9+"','2');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        string estado = cmd.ExecuteNonQuery().ToString();

        return estado;

    }
    

    public string save_nueva_linea4(int id_contri, int id_user, int a_trib, string sociedad, int v1, int v2, int v3, string v4)
    {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [linea1_2_4_8_10] (id_contrib,id_user,linea,sociedad,ano_trib,monto_afecto,monto_exento,incremento,cred_con_der_ret_ef,cred_sin_der_ret_ef,renta_presunta,exento_gbl_compl_con_der,exento_gbl_compl_sin_der,cred_imp_exter,imp_tasa_ad,linea_origen,trasladar_lin41 ) VALUES ('" + id_contri + "','" + id_user + "','4','" + sociedad + "','" + a_trib + "','0','0','0','" + v2 + "','" + v3 + "','" + v1 + "','0','0','0','0','4','"+v4+"');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        string estado = cmd.ExecuteNonQuery().ToString();

        return estado;
    
    }

    public string save_nueva_linea8(int id_contri, int id_user, int a_trib, string sociedad, int v1, int v2, int v3, int v4, int v5)
    {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [linea1_2_4_8_10] (id_contrib,id_user,linea,sociedad,ano_trib,monto_afecto,monto_exento,incremento,cred_con_der_ret_ef,cred_sin_der_ret_ef,renta_presunta,exento_gbl_compl_con_der,exento_gbl_compl_sin_der,imp_tasa_ad,linea_origen ) VALUES ('" + id_contri + "','" + id_user + "','8','" + sociedad + "','" + a_trib + "','0','"+ v1 +"','"+ v2 +"','0','0','0','"+ v3 +"','"+ v4 +"','"+ v5 +"','8');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        string estado = cmd.ExecuteNonQuery().ToString();

        return estado;

    }

    public string save_nueva_linea1(int id_contri, int id_user, int a_trib, string sociedad, Int64 v1, Int64 v2, Int64 v3, Int64 v4, Int64 v5, Int64 v7, Int64 v8, Int64 v9, Int64 v10, string v11, int linea)
    {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [linea1_2_4_8_10] (id_contrib,id_user,linea,sociedad,ano_trib,monto_afecto,monto_exento,incremento,cred_con_der_ret_ef,cred_sin_der_ret_ef,exento_gbl_compl_con_der,exento_gbl_compl_sin_der,cred_imp_exter,imp_tasa_ad,emp_individual,linea_origen ) VALUES ('" + id_contri + "','" + id_user + "','" + linea + "','" + sociedad + "','" + a_trib + "','" + v1 + "','" + v2 + "','" + v3 + "','" + v4 + "','" + v5 + "','" + v7 + "','" + v8 + "','" + v9 + "','" + v10 + "','" + v11 + "','1'); Select scope_identity();";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        string id_devuelto = cmd.ExecuteScalar().ToString();

        return id_devuelto;
        
    }

    public int traspaso_a_linea(int monto_afecto, int monto_exento, int incremento, int cred_con_der_ret_ef, int cred_sin_der_ret_ef, int renta_presunta, int exento_gbl_compl_con_der, int exento_gbl_compl_sin_der, int cred_imp_exter, int imp_tasa_ad)
    {
        //********a la linea 1******************
        if (renta_presunta == 0 && monto_afecto > 0 && monto_exento == 0 && incremento > 0 && (cred_con_der_ret_ef > 0 || cred_sin_der_ret_ef > 0) && exento_gbl_compl_con_der == 0 && exento_gbl_compl_sin_der == 0 && imp_tasa_ad == 0)
        {
            return 1;
        }
        else
        {
            //********a la linea 4******************
            if (renta_presunta > 0 && monto_afecto > 0 && monto_exento == 0 && incremento == 0 && cred_con_der_ret_ef == 0 && cred_sin_der_ret_ef == 0 && exento_gbl_compl_con_der == 0 && cred_sin_der_ret_ef == 0 && imp_tasa_ad == 0)
            {
                return 4;
            }
            else
            {
                //********a la linea 8******************
                if (renta_presunta == 0 && monto_afecto == 0 && monto_exento > 0 && incremento > 0 && cred_con_der_ret_ef == 0 && cred_sin_der_ret_ef == 0 && exento_gbl_compl_con_der >= 0 && cred_sin_der_ret_ef >= 0 && imp_tasa_ad >= 0)
                {
                    return 8;
                }
                else
                {
                    //********a la linea 10******************
                    //if (renta_presunta == 0 && monto_afecto >= 0 && monto_exento >= 0 && incremento > 0 && cred_con_der_ret_ef >= 0 && cred_sin_der_ret_ef >= 0 && exento_gbl_compl_con_der >= 0 && cred_sin_der_ret_ef >= 0 && imp_tasa_ad >= 0)
                    //{
                    //    return 10;
                    //}
                    //else
                    //{

                    //    return 0;
                    //}
                    //*******FIN LINEA 10********************

                    return 0;
                }
                //*******FIN LINEA 8********************
            }
            //*******FIN LINEA 4********************
        }
        //*******FIN LINEA 1********************

      


        
    }

    public String ingresar_codigo(Int64 valor, int codigo, int id_contri, int id_user, string at, int anverso_reverso)
    {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        //verificamos que codigo no tenga valor 
        string query = "";
        query = "SELECT id FROM [codigos_f22] where ((codigo = " + codigo + ") and (id_contribuyente = "+id_contri +") and (id_user = "+id_user+") and at = "+at+")";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();
        int contador = 0;
        String id_codigo = "0";
        while (reader.Read())
            {
                id_codigo = reader["id"].ToString();
                contador = contador + 1;
                
            }
         reader.Close();

         string signo = "+";
         if (valor < 0)
         {
             signo = "-";
         }
         if (contador == 0)
         {
            
             //insertamos el codigo
             string textoCmd = "";
             textoCmd = "INSERT INTO [codigos_f22] (id_contribuyente,id_user,at,codigo,signo,valor,anverso_reverso) VALUES ('" + id_contri + "','" + id_user + "','" + at + "','" + codigo + "','"+signo +"','" + valor + "','" + anverso_reverso + "');";
             SqlCommand cmd2 = new SqlCommand(textoCmd, con);
             string estado = cmd2.ExecuteNonQuery().ToString();
             return estado;
         }
         else
         {
             string textoCmd = "";
             textoCmd = "UPDATE codigos_f22 SET valor = " + valor + "  WHERE id = " + id_codigo;
             SqlCommand cmd2 = new SqlCommand(textoCmd, con);
             string estado = cmd2.ExecuteNonQuery().ToString();
             return estado;
            
         }
        
    }


    public string tipo_contribuyente(string rut) {

      string tipo = "";
      
      string resultado1 = rut.Replace(".", "");
      string resultado2 = resultado1.Replace("-", "");
      int nro_caract = resultado2.Length;
      string resultado3 = resultado2.Substring(0, nro_caract-1);
        //persona natural chilena o extranjera
      if ((1 <= Convert.ToInt32(resultado3) && Convert.ToInt32(resultado3) <= 46999999) || (48000000 <= Convert.ToInt32(resultado3) && Convert.ToInt32(resultado3) <= 49999999))
      {
          tipo = "1";
      }
          //persona juridica chilena o extranjera
      else {
          tipo = "2";
      }
        


      return tipo;
    }


    public string sub_tipo_contribuyente(string rut)
    {

        string subtipo = "";

        string resultado1 = rut.Replace(".", "");
        string resultado2 = resultado1.Replace("-", "");
        int nro_caract = resultado2.Length;
        string resultado3 = resultado2.Substring(0, nro_caract - 1);
        //persona natural chilena 
        if ((1 <= Convert.ToInt32(resultado3) && Convert.ToInt32(resultado3) <= 46999999))
        {
            subtipo = "1";
        }
        //persona natural extranjera
        if ((48000000 <= Convert.ToInt32(resultado3) && Convert.ToInt32(resultado3) <= 49999999))
        {
            subtipo = "2";
        }
        //no es perso natural
        
        return subtipo;
    }

    public void crear_anverso(string id_contrib, string at)
    {

        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [anverso] (id_contribuyente,at ) VALUES ('" + id_contrib + "','" + at + "');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        cmd.ExecuteNonQuery();

    }


    public void crear_reverso(string id_contrib, string at)
    {

        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [reverso] (id_contribuyente,at ) VALUES ('" + id_contrib + "','" + at + "');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        cmd.ExecuteNonQuery();

    }
    
    

    public string Crear_contribuyente(string grupo,string id_user, string rut_cont, string razon_social, string ap_materno,string nombres,string cod_act_econ,string nom_act,string calle,string numero,string depto,string region,string comuna, string mail,string telefono,string bancos,string tpo_cuenta,string nro_cta,string perfil_cont,string rut_contador,string rut_representante,string forma_pago,string soc_prof)
    {
            conexion conectar = new conexion();
            DateTime Hoy = DateTime.Today;

            string fecha_actual = Hoy.ToString("dd-MM-yyyy");

            string datosConexion = conectar.Getconexion();
            SqlConnection con = new SqlConnection(datosConexion);
            con.Open();
            string textoCmd = "";
            textoCmd = "INSERT INTO [contribuyentes] (id_user,rut  ,ap_paterno_o_r_social ,ap_materno,nombres ,cod_act ,actividad ,calle ,nro ,of_depto ,region ,comuna ,mail,telefono  ,nom_banco,tpo_cta ,nro_cta ,perfil_contr ,rut_contador  ,rut_representante,forma_pago ,segunda_cat ,fecha_creacion ,estado,grupo) VALUES ('" + id_user + "','" + rut_cont + "','" + razon_social + "','" + ap_materno + "','" + nombres + "','" + cod_act_econ + "','" + nom_act + "','" + calle + "','" + numero + "','" + depto + "','" + region + "','" + comuna + "','" + mail + "','" + telefono + "','" + bancos + "','" + tpo_cuenta + "','" + nro_cta + "','" + perfil_cont + "','" + rut_contador + "','" + rut_representante + "','"  + forma_pago + "','" + soc_prof + "','" + fecha_actual + "','1','" + grupo + "'); Select scope_identity();";
            SqlCommand cmd = new SqlCommand(textoCmd, con);
           try 
	    {	        
		    string id_devuelto = cmd.ExecuteScalar().ToString();
            con.Close();
            return id_devuelto;
	    }
	    catch (Exception e)
	    {
            //return e.ToString();
            return "0";
            throw;
	    }
        
    
    }





    public string guardar_reverso(string c617, string id_contribuyente)
    {
        conexion conectar = new conexion();
        
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "UPDATE reverso SET c617 = "+ c617 + "  WHERE id_contribuyente = "+ id_contribuyente ;
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            cmd.ExecuteNonQuery();
            con.Close();
            return "1";
        }
        catch (Exception e)
        {
            return e.ToString();
            throw;
        }


    }



    public string crear_f22(string id_user, string id_revisor, string id_aprobador, string at, string id_contribuyente)
    {
        conexion conectar = new conexion();
        DateTime Hoy = DateTime.Today;

        string fecha_actual = Hoy.ToString("dd-MM-yyyy");

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "INSERT INTO [formulario22] (id_contribuyente,id_creador,id_revisor,id_aprobador,fecha_creacion,estado,at) VALUES ('" + id_contribuyente + "','" + id_user + "','" + id_revisor + "','" + id_aprobador + "','" + fecha_actual + "','1','" + at + "');";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            cmd.ExecuteNonQuery();

            con.Close();
            return "1";
        }
        catch (Exception e)
        {
            return e.ToString();
            throw;
        }
        
    }



    public string traerNombreContribuyente(String id_contribuyente)
    {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT * FROM [contribuyentes] where (id = " + id_contribuyente + ")";
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            string nombres = "";
            while (reader.Read())
            {
                nombres = reader["nombres"].ToString() + " " + reader["ap_paterno_o_r_social"].ToString();
                
            }
            reader.Close();
            con.Close();
            return nombres;
           


           
        }

        catch (SqlException a)
        {
            con.Close();

            return "error";
        }
    
    
    }

   



    public bool validacion_user_form(string id_user, string id_contribuyente, string at)
    {
        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd = "";
        textoCmd = "SELECT id FROM [formulario22] where (id_contribuyente = " + id_contribuyente + ") and (at ="+ at +") and (id_creador = "+id_user+" or id_revisor = "+id_user+" or id_aprobador = "+id_user+" )" ;
        SqlCommand cmd = new SqlCommand(textoCmd, con);
        try
        {
            SqlDataReader reader = cmd.ExecuteReader();
            int variable = 0;
            while (reader.Read())
            {
                variable = variable + 1;

            }
            reader.Close();
            con.Close();

            if (variable == 0)
	        {
                return false;
	        }
            else
            {
                return true;
            }


           
        }

        catch (SqlException a)
        {
            con.Close();

            return false;
        }
    
    
    }
}