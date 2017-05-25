using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Anverso
/// </summary>
public class Anverso
{
    //DECLARAMOS LAS VARIABLES
    string  id_f22 = "";
    public string cod847 = "";
    public string cod600 = "";
    public string cod104 = "";
    public string cod601 = "";
    public string cod105 = "";
    public string cod106 = "";
    public string cod603 = "";
    public string cod108 = "";
    public string cod954 = "";
    public string cod955 = "";
    public string cod956 = "";
    public string cod957 = "";
    public string cod958 = "";
    public string cod959 = "";
    public string cod604 = "";
    public string cod109 = "";
    public string cod110 = "";
    public string cod605 = "";
    public string cod155 = "";
    public string cod606 = "";
    public string cod152 = "";
    public string cod161 = "";
    public string cod159 = "";
    public string cod748 = "";
    public string cod749 = "";
    public string cod166 = "";
    public string cod907 = "";
    public string cod764 = "";
    public string cod169 = "";
    public string cod158 = "";
    public string cod111 = "";
    public string cod750 = "";
    public string cod740 = "";
    public string cod751 = "";
    public string cod822 = "";
    public string cod765 = "";
    public string cod766 = "";
    public string cod170 = "";

    public string cod157 = "";
    public string cod201 = "";
    public string cod910 = "";
    public string cod135 = "";
    public string cod136 = "";
    public string cod176 = "";
    public string cod752 = "";
    public string cod608 = "";
    public string cod895 = "";
    public string cod867 = "";
    public string cod609 = "";
    public string cod162 = "";
    public string cod174 = "";
    public string cod610 = "";
    public string cod746 = "";
    public string cod866 = "";
    public string cod607 = "";
    public string cod304 = "";

    public string cod31 = "";
    public string cod960 = "";
    public string cod961 = "";
    public string cod962 = "";
    public string cod963 = "";
    public string cod964 = "";
    public string cod965 = "";
    public string cod18 = "";
    public string cod19 = "";
    public string cod20 = "";
    public string cod824 = "";
    public string cod825 = "";
    public string cod187 = "";
    public string cod188 = "";
    public string cod189 = "";
    public string cod195 = "";
    public string cod196 = "";
    public string cod77 = "";
    public string cod74 = "";
    public string cod79 = "";
    public string cod113 = "";
    public string cod1007 = "";
    public string cod114 = "";
    public string cod908 = "";
    public string cod909 = "";
    public string cod951 = "";
    public string cod952 = "";
    public string cod753 = "";
    public string cod754 = "";
    public string cod755 = "";
    public string cod133 = "";
    public string cod138 = "";
    public string cod134 = "";
    public string cod32 = "";
    public string cod76 = "";
    public string cod34 = "";

    public string cod911 = "";
    public string cod913 = "";
    public string cod914 = "";
    public string cod923 = "";
    public string cod924 = "";
    public string cod925 = "";
    public string cod21 = "";
    public string cod43 = "";
    public string cod756 = "";
    public string cod767 = "";
    public string cod862 = "";
    public string cod863 = "";
    public string cod51 = "";
    public string cod63 = "";
    public string cod71 = "";
    public string cod36 = "";
    public string cod848 = "";
    public string cod849 = "";
    public string cod82 = "";
    public string cod768 = "";
    public string cod769 = "";
    public string cod83 = "";
    public string cod173 = "";
    public string cod612 = "";
    public string cod198 = "";
    public string cod54 = "";
    public string cod611 = "";
    public string cod832 = "";
    public string cod833 = "";
    public string cod834 = "";
    public string cod912 = "";
    public string cod167 = "";
    public string cod747 = "";
    public string cod119 = "";
    public string cod116 = "";
    public string cod757 = "";
    public string cod58 = "";
    public string cod870 = "";
    public string cod871 = "";
    public string cod181 = "";
    public string cod881 = "";
    public string cod882 = "";
    public string cod900 = "";
    public string cod305 = "";
    public string cod85 = "";
    public string cod86 = "";
    public string cod87 = "";
    public string cod90 = "";
    public string cod39 = "";
    public string cod91 = "";
    public string cod92 = "";
    public string cod93 = "";
    public string cod94 = "";


    //datos contribuyente
    public string rut = "";
    public string ap_paterno_o_r_social = "";
    public string ap_materno = "";
    public string nombres = "";
    public string nom_banco = "";
    public string tpo_cta = "";
    public string nro_cta = "";
    public string rut_contador = "";
    public string rut_representante = "";
    public string cod_act = "";
    public string calle = "";
    public string nro = "";
    public string of_depto = "";
    public string region = "";
    public string comuna ="";
    public string mail ="";
    public string telefono = "";
    public string actividad = "";


    ArrayList valores = new ArrayList();
    ArrayList datos_contribuyente = new ArrayList();
    //************************


    //Constructor para inicializar variables vacias
	public Anverso()
	{
        cod847 = "";
	}
    //***********************************************

    //método para establecer valores a variables
    public void SetC847(string valor) {
        cod847 = valor;
    }


    public ArrayList traer_datos_cont(string id_contribuyente) {
        conexion conectar = new conexion();
        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd2 = "";
        textoCmd2 = "SELECT actividad,rut,ap_paterno_o_r_social,ap_materno,nombres,nom_banco,tpo_cta ,nro_cta,rut_contador,rut_representante,cod_act,calle,nro,of_depto,region,comuna,mail,telefono FROM [contribuyentes] where id = " + id_contribuyente;
        SqlCommand cmd2 = new SqlCommand(textoCmd2, con);
        try
        {
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                actividad = reader2["actividad"].ToString();
                rut = reader2["rut"].ToString();
                ap_paterno_o_r_social = reader2["ap_paterno_o_r_social"].ToString();
                ap_materno = reader2["ap_materno"].ToString();
                nombres = reader2["nombres"].ToString();
                nom_banco = reader2["nom_banco"].ToString();
                tpo_cta = reader2["tpo_cta"].ToString();
                nro_cta = reader2["nro_cta"].ToString();
                rut_contador = reader2["rut_contador"].ToString();
                rut_representante = reader2["rut_representante"].ToString();
                cod_act = reader2["cod_act"].ToString();
                calle = reader2["calle"].ToString();
                nro = reader2["nro"].ToString();
                of_depto = reader2["of_depto"].ToString();
                region = reader2["region"].ToString();
                comuna = reader2["comuna"].ToString();
                mail = reader2["mail"].ToString();
                telefono = reader2["telefono"].ToString();
 
            }
            reader2.Close();
            con.Close();
            //insertamos valor de los codigos al arreglo
            datos_contribuyente.Insert(0, rut);
            datos_contribuyente.Insert(1, ap_paterno_o_r_social);
            datos_contribuyente.Insert(2, ap_materno);
            datos_contribuyente.Insert(3, nombres);
            datos_contribuyente.Insert(4, nom_banco);
            datos_contribuyente.Insert(5, tpo_cta);
            datos_contribuyente.Insert(6, nro_cta);
            datos_contribuyente.Insert(7, rut_contador);
            datos_contribuyente.Insert(8, rut_representante);
            datos_contribuyente.Insert(9, cod_act);
            datos_contribuyente.Insert(10, calle);
            datos_contribuyente.Insert(11, nro);
            datos_contribuyente.Insert(12, of_depto);
            datos_contribuyente.Insert(13, region);
            datos_contribuyente.Insert(14, comuna);
            datos_contribuyente.Insert(15, mail);
            datos_contribuyente.Insert(16, telefono);
            datos_contribuyente.Insert(17, actividad);

        }
        catch (SqlException a)
        {
            con.Close();

            return datos_contribuyente;
        }
       
        return datos_contribuyente;
    
    }


    //funcion que trae todos los codigos del anverso de un f22 segun contribuyente y año tributario
    public ArrayList traer_anverso(string id_contribuyente, string at)
    {

        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        
            string textoCmd2 = "";
            textoCmd2 = "SELECT * FROM [anverso] where id_contribuyente = " + id_contribuyente + " and at = " + at + "";
            SqlCommand cmd2 = new SqlCommand(textoCmd2, con);
            try
            {
                SqlDataReader reader2 = cmd2.ExecuteReader();

                while (reader2.Read())
                {
                    //guardamos en las variables los códigos rescatados de la DB
                    cod847 = reader2["c847"].ToString();
                    cod600 = reader2["c600"].ToString();
                    cod104 = reader2["c104"].ToString();
                    cod601 = reader2["c601"].ToString();
                    cod105 = reader2["c105"].ToString();
                    cod106 = reader2["c106"].ToString();
                    cod603 = reader2["c603"].ToString();
                    cod108 = reader2["c108"].ToString();
                    cod954 = reader2["c954"].ToString();
                    cod955 = reader2["c955"].ToString();
                    cod956 = reader2["c956"].ToString();
                    cod957 = reader2["c957"].ToString();
                    cod958 = reader2["c958"].ToString();
                    cod959 = reader2["c959"].ToString();
                    cod604 = reader2["c604"].ToString();
                    cod109 = reader2["c109"].ToString();
                    cod110 = reader2["c110"].ToString();
                    cod605 = reader2["c605"].ToString();
                    cod155 = reader2["c155"].ToString();
                    cod606 = reader2["c606"].ToString();
                    cod152 = reader2["c152"].ToString();
                    cod161 = reader2["c161"].ToString();
                    cod159 = reader2["c159"].ToString();
                    cod748 = reader2["c748"].ToString();
                    cod749 = reader2["c749"].ToString();
                    cod166 = reader2["c166"].ToString();
                    cod907 = reader2["c907"].ToString();
                    cod764 = reader2["c764"].ToString();
                    cod169 = reader2["c169"].ToString();
                    cod158 = reader2["c158"].ToString();
                    cod111 = reader2["c111"].ToString();
                    cod750 = reader2["c750"].ToString();
                    cod740 = reader2["c740"].ToString();
                    cod751 = reader2["c751"].ToString();
                    cod822 = reader2["c822"].ToString();
                    cod765 = reader2["c765"].ToString();
                    cod766 = reader2["c766"].ToString();
                    cod170 = reader2["c170"].ToString();

                    cod157 = reader2["c157"].ToString();
                    cod201 = reader2["c201"].ToString();
                    cod910 = reader2["c910"].ToString();
                    cod135 = reader2["c135"].ToString();
                    cod136 = reader2["c136"].ToString();
                    cod176 = reader2["c176"].ToString();
                    cod752 = reader2["c752"].ToString();
                    cod608 = reader2["c608"].ToString();
                    cod895 = reader2["c895"].ToString();
                    cod867 = reader2["c867"].ToString();
                    cod609 = reader2["c609"].ToString();
                    cod162 = reader2["c162"].ToString();
                    cod174 = reader2["c174"].ToString();
                    cod610 = reader2["c610"].ToString();
                    cod746 = reader2["c746"].ToString();
                    cod866 = reader2["c866"].ToString();
                    cod607 = reader2["c607"].ToString();
                    cod304 = reader2["c304"].ToString();

                    cod31 = reader2["c31"].ToString();
                    cod960 = reader2["c960"].ToString();
                    cod961 = reader2["c961"].ToString();
                    cod962 = reader2["c962"].ToString();
                    cod963 = reader2["c963"].ToString();
                    cod964 = reader2["c964"].ToString();
                    cod965 = reader2["c965"].ToString();
                    cod18 = reader2["c18"].ToString();
                    cod19 = reader2["c19"].ToString();
                    cod20 = reader2["c20"].ToString();
                    cod824 = reader2["c824"].ToString();
                    cod825 = reader2["c825"].ToString();
                    cod187 = reader2["c187"].ToString();
                    cod188 = reader2["c188"].ToString();
                    cod189 = reader2["c189"].ToString();
                    cod195 = reader2["c195"].ToString();
                    cod196 = reader2["c196"].ToString();
                    cod77 = reader2["c77"].ToString();
                    cod74 = reader2["c74"].ToString();
                    cod79 = reader2["c79"].ToString();
                    cod113 = reader2["c113"].ToString();
                    cod1007 = reader2["c1007"].ToString();
                    cod114 = reader2["c114"].ToString();
                    cod908 = reader2["c908"].ToString();
                    cod909 = reader2["c909"].ToString();
                    cod951 = reader2["c951"].ToString();
                    cod952 = reader2["c952"].ToString();
                    cod753 = reader2["c753"].ToString();
                    cod754 = reader2["c754"].ToString();
                    cod755 = reader2["c755"].ToString();
                    cod133 = reader2["c133"].ToString();
                    cod138 = reader2["c138"].ToString();
                    cod134 = reader2["c134"].ToString();
                    cod32 = reader2["c32"].ToString();
                    cod76 = reader2["c76"].ToString();
                    cod34 = reader2["c34"].ToString();

                    cod911 = reader2["c911"].ToString();
                    cod913 = reader2["c913"].ToString();
                    cod914 = reader2["c914"].ToString();
                    cod923 = reader2["c923"].ToString();
                    cod924 = reader2["c924"].ToString();
                    cod925 = reader2["c925"].ToString();
                    cod21 = reader2["c21"].ToString();
                    cod43 = reader2["c43"].ToString();
                    cod756 = reader2["c756"].ToString();
                    cod767 = reader2["c767"].ToString();
                    cod862 = reader2["c862"].ToString();
                    cod863 = reader2["c863"].ToString();
                    cod51 = reader2["c51"].ToString();
                    cod63 = reader2["c63"].ToString();
                    cod71 = reader2["c71"].ToString();
                    cod36 = reader2["c36"].ToString();
                    cod848 = reader2["c848"].ToString();
                    cod849 = reader2["c849"].ToString();
                    cod82 = reader2["c82"].ToString();
                    cod768 = reader2["c768"].ToString();
                    cod769 = reader2["c769"].ToString();
                    cod83 = reader2["c83"].ToString();
                    cod173 = reader2["c173"].ToString();
                    cod612 = reader2["c612"].ToString();
                    cod198 = reader2["c198"].ToString();
                    cod54 = reader2["c54"].ToString();
                    cod611 = reader2["c611"].ToString();
                    cod832 = reader2["c832"].ToString();
                    cod833 = reader2["c833"].ToString();
                    cod834 = reader2["c834"].ToString();
                    cod912 = reader2["c912"].ToString();
                    cod167 = reader2["c167"].ToString();
                    cod747 = reader2["c747"].ToString();
                    cod119 = reader2["c119"].ToString();
                    cod116 = reader2["c116"].ToString();
                    cod757 = reader2["c757"].ToString();
                    cod58 = reader2["c58"].ToString();
                    cod870 = reader2["c870"].ToString();
                    cod871 = reader2["c871"].ToString();
                    cod181 = reader2["c181"].ToString();
                    cod881 = reader2["c881"].ToString();
                    cod882 = reader2["c882"].ToString();
                    cod900 = reader2["c900"].ToString();
                    cod305 = reader2["c305"].ToString();

                    cod85 = reader2["c85"].ToString();
                    cod86 = reader2["c86"].ToString();
                    cod87 = reader2["c87"].ToString();
                    cod90 = reader2["c90"].ToString();
                    cod39 = reader2["c39"].ToString();
                    cod91 = reader2["c91"].ToString();
                    cod92 = reader2["c92"].ToString();
                    cod93 = reader2["c93"].ToString();
                    cod94 = reader2["c94"].ToString();
                }
                reader2.Close();


                con.Close();
                //insertamos valor de los codigos al arreglo
                valores.Insert(0, cod847);
                valores.Insert(1, cod600);
                valores.Insert(2, cod104);
                valores.Insert(3, cod601);
                valores.Insert(4, cod105);
                valores.Insert(5, cod106);
                valores.Insert(6, cod603);
                valores.Insert(7, cod108);
                valores.Insert(8, cod954);
                valores.Insert(9, cod955);
                valores.Insert(10, cod956);
                valores.Insert(11, cod957);
                valores.Insert(12, cod958);
                valores.Insert(13, cod959);
                valores.Insert(14, cod604);
                valores.Insert(15, cod109);
                valores.Insert(16, cod110);
                valores.Insert(17, cod605);
                valores.Insert(18, cod155);
                valores.Insert(19, cod606);
                valores.Insert(20, cod152);
                valores.Insert(21, cod161);
                valores.Insert(22, cod159);
                valores.Insert(23, cod748);
                valores.Insert(24, cod749);
                valores.Insert(25, cod166);
                valores.Insert(26, cod907);
                valores.Insert(27, cod764);
                valores.Insert(28, cod169);
                valores.Insert(29, cod158);
                valores.Insert(30, cod111);
                valores.Insert(31, cod750);
                valores.Insert(32, cod740);
                valores.Insert(33, cod751);
                valores.Insert(34, cod822);
                valores.Insert(35, cod765);
                valores.Insert(36, cod766);
                valores.Insert(37, cod170);
                valores.Insert(38, cod157);
                valores.Insert(39, cod201);
                valores.Insert(40, cod910);
                valores.Insert(41, cod135);
                valores.Insert(42, cod136);
                valores.Insert(43, cod176);
                valores.Insert(44, cod752);
                valores.Insert(45, cod608);
                valores.Insert(46, cod895);
                valores.Insert(47, cod867);
                valores.Insert(48, cod609);
                valores.Insert(49, cod162);
                valores.Insert(50, cod174);
                valores.Insert(51, cod610);
                valores.Insert(52, cod746);
                valores.Insert(53, cod866);
                valores.Insert(54, cod607);
                valores.Insert(55, cod304);
                valores.Insert(56, cod31);
                valores.Insert(57, cod960);
                valores.Insert(58, cod961);
                valores.Insert(59, cod962);
                valores.Insert(60, cod963);
                valores.Insert(61, cod964);
                valores.Insert(62, cod965);
                valores.Insert(63, cod18);
                valores.Insert(64, cod19);
                valores.Insert(65, cod20);
                valores.Insert(66, cod824);
                valores.Insert(67, cod825);
                valores.Insert(68, cod187);
                valores.Insert(69, cod188);
                valores.Insert(70, cod189);
                valores.Insert(71, cod195);
                valores.Insert(72, cod196);
                valores.Insert(73, cod77);
                valores.Insert(74, cod74);
                valores.Insert(75, cod79);
                valores.Insert(76, cod113);
                valores.Insert(77, cod1007);
                valores.Insert(78, cod114);
                valores.Insert(79, cod908);
                valores.Insert(80, cod909);
                valores.Insert(81, cod951);
                valores.Insert(82, cod952);
                valores.Insert(83, cod753);
                valores.Insert(84, cod754);
                valores.Insert(85, cod755);
                valores.Insert(86, cod133);
                valores.Insert(87, cod138);
                valores.Insert(88, cod134);
                valores.Insert(89, cod32);
                valores.Insert(90, cod76);
                valores.Insert(91, cod34);

                valores.Insert(92, cod911);
                valores.Insert(93, cod913);
                valores.Insert(94, cod914);
                valores.Insert(95, cod923);
                valores.Insert(96, cod924);
                valores.Insert(97, cod925);
                valores.Insert(98, cod21);
                valores.Insert(99, cod43);
                valores.Insert(100, cod756);
                valores.Insert(101, cod767);
                valores.Insert(102, cod862);
                valores.Insert(103, cod863);
                valores.Insert(104, cod51);
                valores.Insert(105, cod63);
                valores.Insert(106, cod71);
                valores.Insert(107, cod36);
                valores.Insert(108, cod848);
                valores.Insert(109, cod849);
                valores.Insert(110, cod82);
                valores.Insert(111, cod768);
                valores.Insert(112, cod769);
                valores.Insert(113, cod83);
                valores.Insert(114, cod173);
                valores.Insert(115, cod612);
                valores.Insert(116, cod198);
                valores.Insert(117, cod54);
                valores.Insert(118, cod611);
                valores.Insert(119, cod832);
                valores.Insert(120, cod833);
                valores.Insert(121, cod834);
                valores.Insert(122, cod912);
                valores.Insert(123, cod167);
                valores.Insert(124, cod747);
                valores.Insert(125, cod119);
                valores.Insert(126, cod116);
                valores.Insert(127, cod757);
                valores.Insert(128, cod58);
                valores.Insert(129, cod870);
                valores.Insert(130, cod871);
                valores.Insert(131, cod181);
                valores.Insert(132, cod881);
                valores.Insert(133, cod882);
                valores.Insert(134, cod900);
                valores.Insert(135, cod305);

                valores.Insert(136, cod85);
                valores.Insert(137, cod86);
                valores.Insert(138, cod87);
                valores.Insert(139, cod90);
                valores.Insert(140, cod39);
                valores.Insert(141, cod91);
                valores.Insert(142, cod92);
                valores.Insert(143, cod93);
                valores.Insert(144, cod94);

                


                return valores;
            }

            catch (SqlException a)
            {
                con.Close();

                return valores;
            }
        }

    
}