using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Reverso
/// </summary>
public class Reverso
{
    //DECLARAMOS LAS VARIABLES
    string  id_f22 = "";
    public string c95 = "";
    public string c852 = "";
    public string c897 = "";
    public string c853 = "";
    public string c941 = "";
    public string c968 = "";
    public string c969 = "";
    public string c635 = "";
    public string c636 = "";
    public string c637 = "";
    public string c638 = "";
    public string c926 = "";
    public string c927 = "";
    public string c970 = "";
    public string c971 = "";
    public string c639 = "";
    public string c1000 = "";
    public string c827 = "";
    public string c634 = "";
    public string c928 = "";
    public string c929 = "";
    public string c640 = "";
    public string c807 = "";
    public string c641 = "";
    public string c642 = "";
    public string c972 = "";
    public string c973 = "";
    public string c868 = "";
    public string c643 = "";
    public string c808 = "";
    public string c758 = "";
    public string c809 = "";
    public string c759 = "";
    public string c760 = "";
    public string c974 = "";
    public string c975 = "";
    public string c976 = "";
    public string c101 = "";
    public string c784 = "";
    public string c783 = "";

    public string c977 = "";
    public string c129 = "";
    public string c647 = "";
    public string c940 = "";
    public string c648 = "";
    public string c978 = "";
    public string c815 = "";
    public string c741 = "";
    public string c122 = "";
    public string c123 = "";
    public string c102 = "";
    public string c645 = "";
    public string c893 = "";
    public string c894 = "";
    public string c646 = "";
    public string c843 = "";
    public string c844 = "";
    public string c1003 = "";
    public string c1004 = "";
    public string c1005 = "";

    public string c785 = "";
    public string c950 = "";
    public string c938 = "";
    public string c942 = "";
    public string c949 = "";
    public string c701 = "";
    public string c702 = "";
    public string c703 = "";
    public string c704 = "";
    public string c930 = "";
    public string c705 = "";
    public string c796 = "";
    public string c797 = "";
    public string c798 = "";
    public string c799 = "";
    public string c800 = "";
    public string c801 = "";
    public string c802 = "";
    public string c803 = "";
    public string c804 = "";

    public string c943 = "";
    public string c944 = "";
    public string c945 = "";
    public string c946 = "";
    public string c947 = "";
    public string c948 = "";
    public string c224 = "";
    public string c774 = "";
    public string c931 = "";
    public string c775 = "";
    public string c979 = "";
    public string c284 = "";
    public string c225 = "";
    public string c932 = "";
    public string c883 = "";
    public string c229 = "";
    public string c624 = "";
    public string c227 = "";
    public string c776 = "";
    public string c777 = "";
    public string c782 = "";
    public string c835 = "";
    public string c791 = "";
    public string c933 = "";
    public string c889 = "";
    public string c275 = "";
    public string c226 = "";
    public string c231 = "";
    public string c934 = "";
    public string c318 = "";
    public string c232 = "";
    public string c625 = "";
    public string c935 = "";
    public string c626 = "";
    public string c939 = "";
    public string c627 = "";
    public string c904 = "";
    public string c838 = "";
    public string c936 = "";
    public string c937 = "";
    public string c845 = "";
    public string c818 = "";
    public string c842 = "";
    public string c980 = "";
    public string c981 = "";
    public string c819 = "";
    public string c837 = "";
    public string c820 = "";
    public string c228 = "";
    public string c840 = "";
    public string c836 = "";
    public string c982 = "";
    public string c320 = "";
    public string c983 = "";
    public string c828 = "";
    public string c830 = "";
    public string c829 = "";
    public string c898 = "";
    public string c373 = "";
    public string c365 = "";

    public string c382 = "";
    public string c761 = "";
    public string c773 = "";
    public string c366 = "";
    public string c392 = "";
    public string c984 = "";
    public string c839 = "";
    public string c384 = "";
    public string c385 = "";
    public string c390 = "";
    public string c742 = "";
    public string c841 = "";
    public string c387 = "";
    public string c855 = "";
    public string c236 = "";
    public string c238 = "";
    public string c1006 = "";
    public string c999= "";
    public string c998 = "";
    public string c953 = "";

    public string c859 = "";
    public string c884 = "";
    public string c885 = "";
    public string c886 = "";
    public string c985 = "";
    public string c887 = "";
    public string c986 = "";
    public string c987 = "";
    public string c988 = "";
    public string c792 = "";
    public string c989 = "";
    public string c772 = "";
    public string c990 = "";
    public string c991 = "";
    public string c1001 = "";
    public string c794 = "";
    public string c993 = "";
    public string c811 = "";
    public string c994 = "";
    public string c793 = "";

    public string c873 = "";
    public string c876 = "";
    public string c812 = "";
    public string c1002 = "";

    public string c461 = "";
    public string c545 = "";
    public string c856 = "";
    public string c547 = "";
    public string c617 = "";
    public string c770 = "";
    public string c872 = "";
    public string c465 = "";
    public string c494 = "";
    public string c850 = "";
    public string c467 = "";
    public string c479 = "";
    public string c618 = "";
    public string c492 = "";
    public string c491 = "";
    public string c619 = "";
    public string c896 = "";
    public string c628 = "";
    public string c851 = "";
    public string c629 = "";
    public string c651 = "";
    public string c630 = "";
    public string c631 = "";
    public string c632 = "";
    public string c633 = "";
    public string c966 = "";
    public string c967 = "";
   


    ArrayList valores = new ArrayList();
   
    //************************


    //Constructor para inicializar variables vacias
	public Reverso()
	{
      
	}
    //***********************************************

    

   

    //funcion que trae todos los codigos del anverso de un f22 segun contribuyente y año tributario
    public ArrayList traer_reverso(string id_contribuyente, string at)
    {

        conexion conectar = new conexion();

        string datosConexion = conectar.Getconexion();
        SqlConnection con = new SqlConnection(datosConexion);
        con.Open();
        string textoCmd2 = "";
        textoCmd2 = "SELECT * FROM [reverso] where id_contribuyente = " + id_contribuyente + " and at = " + at + "";
        SqlCommand cmd2 = new SqlCommand(textoCmd2, con);
        try
        {
            SqlDataReader reader2 = cmd2.ExecuteReader();

            while (reader2.Read())
            {
                    //guardamos en las variables los códigos rescatados de la DB
                  
                    c95 = reader2["c95"].ToString();
                    c852 =  reader2["c852"].ToString();
                    c897 = reader2["c897"].ToString();
                    c853 = reader2["c853"].ToString();
                    c941 = reader2["c941"].ToString();
                    c968 = reader2["c968"].ToString();
                    c969 = reader2["c969"].ToString();
                    c635 = reader2["c635"].ToString();
                    c636 = reader2["c636"].ToString();
                    c637 = reader2["c637"].ToString();
                    c638 = reader2["c638"].ToString();
                    c926 = reader2["c926"].ToString();
                    c927 = reader2["c927"].ToString();
                    c970 = reader2["c970"].ToString();
                    c971 = reader2["c971"].ToString();
                    c639 = reader2["c639"].ToString();
                    c1000 = reader2["c1000"].ToString();
                    c827 = reader2["c827"].ToString();
                    c634 = reader2["c634"].ToString();
                    c928 = reader2["c928"].ToString();
                    c929 = reader2["c929"].ToString();
                    c640 = reader2["c640"].ToString();
                    c807 = reader2["c807"].ToString();
                    c641 = reader2["c641"].ToString();
                    c642 = reader2["c642"].ToString();
                    c972 = reader2["c972"].ToString();
                    c973 = reader2["c973"].ToString();
                    c868 = reader2["c868"].ToString();
                    c643 = reader2["c643"].ToString();
                    c808 = reader2["c808"].ToString();
                    c758 = reader2["c758"].ToString();
                    c809 = reader2["c809"].ToString();
                    c759 = reader2["c759"].ToString();
                    c760 = reader2["c760"].ToString();
                    c974 = reader2["c974"].ToString();
                    c975 = reader2["c975"].ToString();
                    c976 = reader2["c976"].ToString();
                    c101 = reader2["c101"].ToString();
                    c784 = reader2["c784"].ToString();
                    c783 = reader2["c783"].ToString();

                    c977 = reader2["c977"].ToString();
                    c129 = reader2["c129"].ToString();
                    c647 = reader2["c647"].ToString();
                    c940 = reader2["c940"].ToString();
                    c648 = reader2["c648"].ToString();
                    c978 = reader2["c978"].ToString();
                    c815 = reader2["c815"].ToString();
                    c741 = reader2["c741"].ToString();
                    c122 = reader2["c122"].ToString();
                    c123 = reader2["c123"].ToString();
                    c102 = reader2["c102"].ToString();
                    c645 = reader2["c645"].ToString();
                    c893 = reader2["c893"].ToString();
                    c894 = reader2["c894"].ToString();
                    c646 = reader2["c646"].ToString();
                    c843 = reader2["c843"].ToString();
                    c844 = reader2["c844"].ToString();
                    c1003 = reader2["c1003"].ToString();
                    c1004 = reader2["c1004"].ToString();
                    c1005 = reader2["c1005"].ToString();

                    c785 = reader2["c785"].ToString();
                    c950 = reader2["c950"].ToString();
                    c938 = reader2["c938"].ToString();
                    c942 = reader2["c942"].ToString();
                    c949 = reader2["c949"].ToString();
                    c701 = reader2["c701"].ToString();
                    c702 = reader2["c702"].ToString();
                    c703 = reader2["c703"].ToString();
                    c704 = reader2["c704"].ToString();
                    c930 = reader2["c930"].ToString();
                    c705 = reader2["c705"].ToString();
                    c796 = reader2["c796"].ToString();
                    c797 = reader2["c797"].ToString();
                    c798 = reader2["c798"].ToString();
                    c799 = reader2["c799"].ToString();
                    c800 = reader2["c800"].ToString();
                    c801 = reader2["c801"].ToString();
                    c802 = reader2["c802"].ToString();
                    c803 = reader2["c803"].ToString();
                    c804 = reader2["c804"].ToString();

                    c943 = reader2["c943"].ToString();
                    c944 = reader2["c944"].ToString();
                    c945 = reader2["c945"].ToString();
                    c946 = reader2["c946"].ToString();
                    c947 = reader2["c947"].ToString();
                    c948 = reader2["c948"].ToString();
                    c224 = reader2["c224"].ToString();
                    c774 = reader2["c774"].ToString();
                    c931 = reader2["c931"].ToString();
                    c775 = reader2["c775"].ToString();
                    c979 = reader2["c979"].ToString();
                    c284 = reader2["c284"].ToString();
                    c225 = reader2["c225"].ToString();
                    c932 = reader2["c932"].ToString();
                    c883 = reader2["c883"].ToString();
                    c229 = reader2["c229"].ToString();
                    c624 = reader2["c624"].ToString();
                    c227 = reader2["c227"].ToString();
                    c776 = reader2["c776"].ToString();
                    c777 = reader2["c777"].ToString();
                    c782 = reader2["c782"].ToString();
                    c835 = reader2["c835"].ToString();
                    c791 = reader2["c791"].ToString();
                    c933 = reader2["c933"].ToString();
                    c889 = reader2["c889"].ToString();
                    c275 = reader2["c275"].ToString();
                    c226 = reader2["c226"].ToString();
                    c231 = reader2["c231"].ToString();
                    c934 = reader2["c934"].ToString();
                    c318 = reader2["c318"].ToString();
                    c232 = reader2["c232"].ToString();
                    c625 = reader2["c625"].ToString();
                    c935 = reader2["c935"].ToString();
                    c626 = reader2["c626"].ToString();
                    c939 = reader2["c939"].ToString();
                    c627 = reader2["c627"].ToString();
                    c904 = reader2["c904"].ToString();
                    c838 = reader2["c838"].ToString();
                    c936 = reader2["c936"].ToString();
                    c937 = reader2["c937"].ToString();
                    c845 = reader2["c845"].ToString();
                    c818 = reader2["c818"].ToString();
                    c842 = reader2["c842"].ToString();
                    c980 = reader2["c980"].ToString();
                    c981 = reader2["c981"].ToString();
                    c819 = reader2["c819"].ToString();
                    c837 = reader2["c837"].ToString();
                    c820 = reader2["c820"].ToString();
                    c228 = reader2["c228"].ToString();
                    c840 = reader2["c840"].ToString();
                    c836 = reader2["c836"].ToString();
                    c982 = reader2["c982"].ToString();
                    c320 = reader2["c320"].ToString();
                    c983 = reader2["c983"].ToString();
                    c828 = reader2["c828"].ToString();
                    c830 = reader2["c830"].ToString();
                    c829 = reader2["c829"].ToString();
                    c898 = reader2["c898"].ToString();
                    c373 = reader2["c373"].ToString();
                    c365 = reader2["c365"].ToString();

                    c382 = reader2["c382"].ToString();
                    c761 = reader2["c761"].ToString();
                    c773 = reader2["c773"].ToString();
                    c366 = reader2["c366"].ToString();
                    c392 = reader2["c392"].ToString();
                    c984 = reader2["c984"].ToString();
                    c839 = reader2["c839"].ToString();
                    c384 = reader2["c384"].ToString();
                    c385 = reader2["c385"].ToString();
                    c390 = reader2["c390"].ToString();
                    c742 = reader2["c742"].ToString();
                    c841 = reader2["c841"].ToString();
                    c387 = reader2["c387"].ToString();
                    c855 = reader2["c855"].ToString();
                    c236 = reader2["c236"].ToString();
                    c238 = reader2["c238"].ToString();
                    c1006 = reader2["c1006"].ToString();
                    c999 = reader2["c999"].ToString();
                    c998 = reader2["c998"].ToString();
                    c953 = reader2["c953"].ToString();

                    c859 = reader2["c859"].ToString();
                    c884 = reader2["c884"].ToString();
                    c885 = reader2["c885"].ToString();
                    c886 = reader2["c886"].ToString();
                    c985 = reader2["c985"].ToString();
                    c887 = reader2["c887"].ToString();
                    c986 = reader2["c986"].ToString();
                    c987 = reader2["c987"].ToString();
                    c988 = reader2["c988"].ToString();
                    c792 = reader2["c792"].ToString();
                    c989 = reader2["c989"].ToString();
                    c772 = reader2["c772"].ToString();
                    c990 = reader2["c990"].ToString();
                    c991 = reader2["c991"].ToString();
                    c1001 = reader2["c1001"].ToString();
                    c794 = reader2["c794"].ToString();
                    c993 = reader2["c993"].ToString();
                    c811 = reader2["c811"].ToString();
                    c994 = reader2["c994"].ToString();
                    c793 = reader2["c793"].ToString();

                    c873 = reader2["c873"].ToString();
                    c876 = reader2["c876"].ToString();
                    c812 = reader2["c812"].ToString();
                    c1002 = reader2["c1002"].ToString();

                    c461 = reader2["c461"].ToString();
                    c545 = reader2["c545"].ToString();
                    c856 = reader2["c856"].ToString();
                    c547 = reader2["c547"].ToString();
                    c617 = reader2["c617"].ToString();
                    c770 = reader2["c770"].ToString();
                    c872 = reader2["c872"].ToString();
                    c465 = reader2["c465"].ToString();
                    c494 = reader2["c494"].ToString();
                    c850 = reader2["c850"].ToString();
                    c467 = reader2["c467"].ToString();
                    c479 = reader2["c479"].ToString();
                    c618 = reader2["c618"].ToString();
                    c492 = reader2["c492"].ToString();
                    c491 = reader2["c491"].ToString();
                    c619 = reader2["c619"].ToString();
                    c896 = reader2["c896"].ToString();
                    c628 = reader2["c628"].ToString();
                    c851 = reader2["c851"].ToString();
                    c629 = reader2["c629"].ToString();
                    c651 = reader2["c651"].ToString();
                    c630 = reader2["c630"].ToString();
                    c631 = reader2["c631"].ToString();
                    c632 = reader2["c632"].ToString();
                    c633 = reader2["c633"].ToString();
                    c966 = reader2["c966"].ToString();
                    c967 = reader2["c967"].ToString();

                  
                }
                reader2.Close();


                con.Close();
                //insertamos valor de los codigos al arreglo
                valores.Insert(0, c95);
                valores.Insert(1, c852);
                valores.Insert(2, c897);
                valores.Insert(3, c853);

                valores.Insert(4, c941);
                valores.Insert(5, c968);
                valores.Insert(6, c969);
                valores.Insert(7, c635);
                valores.Insert(8, c636);
                valores.Insert(9, c637);
                valores.Insert(10, c638);
                valores.Insert(11, c926);
                valores.Insert(12, c927);
                valores.Insert(13, c970);

                valores.Insert(14, c971);
                valores.Insert(15, c639);
                valores.Insert(16, c1000);
                valores.Insert(17, c827);
                valores.Insert(18, c634);
                valores.Insert(19, c928);
                valores.Insert(20, c929);
                valores.Insert(21, c640);
                valores.Insert(22, c807);
                valores.Insert(23, c641);

                valores.Insert(24, c642);
                valores.Insert(25, c972);
                valores.Insert(26, c973);
                valores.Insert(27, c868);
                valores.Insert(28, c643);
                valores.Insert(29, c808);
                valores.Insert(30, c758);
                valores.Insert(31, c809);
                valores.Insert(32, c759);
                valores.Insert(33, c760);
                valores.Insert(34, c974);
                valores.Insert(35, c975);
                valores.Insert(36, c976);
                valores.Insert(37, c101);
                valores.Insert(38, c784);
                valores.Insert(39, c783);
                valores.Insert(40, c977);
                valores.Insert(41, c129);
                valores.Insert(42, c647);
                valores.Insert(43, c940);

                valores.Insert(44, c648);
                valores.Insert(45, c978);
                valores.Insert(46, c815);
                valores.Insert(47, c741);
                valores.Insert(48, c122);
                valores.Insert(49, c123);
                valores.Insert(50, c102);
                valores.Insert(51, c645);
                valores.Insert(52, c893);
                valores.Insert(53, c894);
                valores.Insert(54, c646);
                valores.Insert(55, c843);
                valores.Insert(56, c844);
                valores.Insert(57, c1003);
                valores.Insert(58, c1004);
                valores.Insert(59, c1005);
                valores.Insert(60, c785);
                valores.Insert(61, c950);
                valores.Insert(62, c938);
                valores.Insert(63, c942);

                valores.Insert(64, c949);
                valores.Insert(65, c701);
                valores.Insert(66, c702);
                valores.Insert(67, c703);
                valores.Insert(68, c704);
                valores.Insert(69, c930);
                valores.Insert(70, c705);
                valores.Insert(71, c796);
                valores.Insert(72, c797);
                valores.Insert(73, c798);
                valores.Insert(74, c799);
                valores.Insert(75, c800);
                valores.Insert(76, c801);
                valores.Insert(77, c802);
                valores.Insert(78, c803);
                valores.Insert(79, c804);
                valores.Insert(80, c943);
                valores.Insert(81, c944);
                valores.Insert(82, c945);
                valores.Insert(83, c946);


                valores.Insert(84, c947);
                valores.Insert(85, c948);
                valores.Insert(86, c224);
                valores.Insert(87, c774);
                valores.Insert(88, c931);
                valores.Insert(89, c775);
                valores.Insert(90, c979);
                valores.Insert(91, c284);
                valores.Insert(92, c225);
                valores.Insert(93, c932);

                valores.Insert(94, c883);
                valores.Insert(95, c229);
                valores.Insert(96, c624);
                valores.Insert(97, c227);
                valores.Insert(98, c776);
                valores.Insert(99, c777);
                valores.Insert(100, c782);
                valores.Insert(101, c835);
                valores.Insert(102, c791);
                valores.Insert(103, c933);


                valores.Insert(104, c889);
                valores.Insert(105, c275);
                valores.Insert(106, c226);
                valores.Insert(107, c231);
                valores.Insert(108, c934);
                valores.Insert(109, c318);
                valores.Insert(110, c232);
                valores.Insert(111, c625);
                valores.Insert(112, c935);
                valores.Insert(113, c626);

                valores.Insert(114, c939);
                valores.Insert(115, c627);
                valores.Insert(116, c904);
                valores.Insert(117, c838);
                valores.Insert(118, c936);
                valores.Insert(119, c937);
                valores.Insert(120, c845);
                valores.Insert(121, c818);
                valores.Insert(122, c842);
                valores.Insert(123, c980);

                valores.Insert(124, c981);
                valores.Insert(125, c819);
                valores.Insert(126, c837);
                valores.Insert(127, c820);
                valores.Insert(128, c228);
                valores.Insert(129, c840);
                valores.Insert(130, c836);
                valores.Insert(131, c982);
                valores.Insert(132, c320);
                valores.Insert(133, c983);

                valores.Insert(134, c828);
                valores.Insert(135, c830);
                valores.Insert(136, c829);
                valores.Insert(137, c898);
                valores.Insert(138, c373);
                valores.Insert(139, c365);
                valores.Insert(140, c382);
                valores.Insert(141, c761);
                valores.Insert(142, c773);
                valores.Insert(143, c366);

                valores.Insert(144, c392);
                valores.Insert(145, c984);
                valores.Insert(146, c839);
                valores.Insert(147, c384);
                valores.Insert(148, c385);
                valores.Insert(149, c390);
                valores.Insert(150, c742);
                valores.Insert(151, c841);
                valores.Insert(152, c387);
                valores.Insert(153, c855);

                valores.Insert(154, c236);
                valores.Insert(155, c238);
                valores.Insert(156, c1006);
                valores.Insert(157, c999);
                valores.Insert(158, c998);
                valores.Insert(159, c953);
                valores.Insert(160, c859);
                valores.Insert(161, c884);
                valores.Insert(162, c885);
                valores.Insert(163, c886);

                valores.Insert(164, c985);
                valores.Insert(165, c887);
                valores.Insert(166, c987);
                valores.Insert(167, c988);
                valores.Insert(168, c792);
                valores.Insert(169, c989);
                valores.Insert(170, c772);
                valores.Insert(171, c990);
                valores.Insert(172, c991);
                valores.Insert(173, c1001);

                valores.Insert(174, c794);
                valores.Insert(175, c993);
                valores.Insert(176, c811);
                valores.Insert(177, c994);
                valores.Insert(178, c793);
                valores.Insert(179, c873);
                valores.Insert(180, c876);
                valores.Insert(181, c812);
                valores.Insert(182, c1001);
                valores.Insert(183, c1002);


                valores.Insert(184, c461);
                valores.Insert(185, c545);
                valores.Insert(186, c856);
                valores.Insert(187, c547);
                valores.Insert(188, c617);
                valores.Insert(189, c770);
                valores.Insert(190, c872);
                valores.Insert(191, c465);
                valores.Insert(192, c494);
                valores.Insert(193, c850);
                valores.Insert(194, c467);
                valores.Insert(195, c479);
                valores.Insert(196, c618);
                valores.Insert(197, c492);
                valores.Insert(198, c491);
                valores.Insert(199, c619);
                valores.Insert(200, c896);
                valores.Insert(201, c628);
                valores.Insert(202, c851);
                valores.Insert(203, c629);
                valores.Insert(204, c651);
                valores.Insert(205, c630);
                valores.Insert(206, c631);
                valores.Insert(207, c632);
                valores.Insert(208, c633);
                valores.Insert(209, c966);
                valores.Insert(210, c967);
               



                return valores;
            }

            catch (SqlException a)
            {
                con.Close();

                return valores;
            }
        }

    
}