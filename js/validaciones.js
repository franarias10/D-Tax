

//autor: Francisco Arias
//año: 2016
//Deloitte
//_________________________________________________VALIDACIONES DEL REVERSO_______________________________________________________

function validar_reverso() {
    var tipo_perso = $('#tipo_perso').text();
    var subtipo_perso = $('#sub_tipo_perso').text();
    var valido = true;
    var table = "<table border='1' style='background-color: #BDBDBD; color: black;font-size: 14px;text-align:center;'><tr><td>Código(s)</td> <td>Sección</td> <td>Código Error según SII</td><td width='400px'>Mensaje Error según SII</td> <td >Ver</td></tr>";


    //********PARAMETROS 2016**********
    var p03 = 89910;
    var p04 = 5394600;
    var p08 = 0.3;
    var p11 = 0.05;
    var p12 = 26973000;
    var p13 = 0.775;
    var p22 = 0.2;
    var p24 = 0.1;
    var p27 = 22512593;
    var p28 = 0.4;
    var p30 = 0.01;
    var p37 = 629370000;
    var p42 = 8091900; //15 UTA
    var p56 = 0.01;
    var p57 = 0.01;
    var p58 = 0.01;
    var p59 = 0.53846;
    var p60 = 0.4950;
    var p61 = 0.3950;
    var p62 = 0.3500;
    var p63 = 0.2000;
    var p64 = 0.2500;
    var p80 = 80919000;
    var p82 = 4315680;
    var p84 = 0.225;
    var p85 = 0.290322;
    var p87 = 25629.09;
    var p344 = 64735200;
    var p358 = 5000000000;
    var p456 = 792;
    var p474 = 0.35;
//************************************

    //declaramos variables a utilizar
    var c465 = 0;
    var c547 = 0;
    var c704 = 0;
    var c705 = 0;
    var c930 = 0;

    var c231 = 0;
    var c934 = 0;
    var c318 = 0;
    var c232 = 0;
    var c774 = 0;
    var c931 = 0;
    var c775 = 0;
    var c979 = 0;
    var c284 = 0;
    var c225 = 0;
    var c932 = 0;
    var c883 = 0;
    var c229 = 0;
    var c624 = 0;
    var c227 = 0;
    var c776 = 0;
    var c777 = 0;
    var c782 = 0;
    var c835 = 0;
    var c791 = 0;
    var c933 = 0;
    var c889 = 0;
    var c275 = 0;
    var c226 = 0;
    var c491 = 0;
    var c479 = 0;
    var c868 = 0;
    var c883 = 0;
    var c926 = 0;
    var c632 = 0;
    var c838 = 0;
    var c936 = 0;
    var c625 = 0;
    var c935 = 0;
    var c626 = 0;
    var c939 = 0;
    var c627 = 0;
    var c904 = 0;
    var c856 = 0;
    var c746 = 0;
    var c850 = 0;
    var c461 = 0;
    var c545 = 0;
    var c645 = 0;
    var c646 = 0;
    var c912 = 0;
    var c643 = 0;
    var c167 = 0;
    var c494 = 0;

    var c224 = 0;
    var c937 = 0;
    var c845 = 0;
    var c818 = 0;
    var c842 = 0;
    var c980 = 0;
    var c981 = 0;
    var c819 = 0;
    var c837 = 0;
    var c820 = 0;
    var c228 = 0;
    var c840 = 0;
    var c836 = 0;
    var c982 = 0;
    var c320 = 0;
    var c983 = 0;
    var c828 = 0;
    var c830 = 0;
    var c829 = 0;

    var c101 = 0;
    var c784 = 0;
    var c783 = 0;
    var c977 = 0;
    var c129 = 0;
    var c647 = 0;
    var c940 = 0;
    var c648 = 0;
    var c978 = 0;
    var c815 = 0;
    var c741 = 0;
    var c122 = 0;
    var c123 = 0;
    var c102 = 0;
    var c893 = 0;
    var c894 = 0;
    var c843 = 0;
    var c844 = 0;
    var c1003 = 0;
    var c1004 = 0;
    var c1005 = 0;
    var c785 = 0;
    var c950 = 0;
    var c938 = 0;
    var c942 = 0;
    var c949 = 0;
    var c637 = 0;
    var c638 = 0;
    var c492 = 0;

    var c796 = 0;
    var c799 = 0;
    var c802 = 0;

    var c797 = 0;
    var c800 = 0;
    var c803 = 0;

    var c798 = 0;
    var c801 = 0;
    var c804 = 0;

    var c853 = 0;
    var c851 = 0;

    var c808 = 0;
    var c758 = 0;
    var c809 = 0;
    var c759 = 0;
    var c760 = 0;
    var c974 = 0;
    var c975 = 0;
    var c976 = 0;
    var c229 = 0;

    var c943 = 0;
    var c945 = 0;
    var c947 = 0;

    var c944 = 0;
    var c946 = 0;
    var c948 = 0;
    var c373 = 0;
    var c701 = 0;
    var c702 = 0;
    var c825 = 0;
    var c827 = 0;
    var c972 = 0;
    var c973 = 0;
    var c896 = 0;
    var c617 = 0;

    var c614 = $("input[id='cod614']:radio").is(':checked');

    if ($('#cod465').val().trim() != "") {
        c465 = $('#cod465').val().trim();
        c465 = ((c465).replace(/\./g, ''));
    }
    if ($('#cod547').val().trim() != "") {
        c547 = $('#cod547').val().trim();
        c547 = ((c547).replace(/\./g, ''));
    }
    if ($('#cod704').val().trim() != "") {
        c704 = $('#cod704').val().trim();
        c704 = ((c704).replace(/\./g, ''));
    }
    if ($('#cod705').val().trim() != "") {
        c705 = $('#cod705').val().trim();
        c705 = ((c705).replace(/\./g, ''));
    }
    if ($('#cod930').val().trim() != "") {
        c930 = $('#cod930').val().trim();
        c930 = ((c930).replace(/\./g, ''));
    }
    if ($('#cod231').val().trim() != "") {
        c231 = $('#cod231').val().trim();
        c231 = ((c231).replace(/\./g, ''));
    }
    if ($('#cod934').val().trim() != "") {
        c934 = $('#cod934').val().trim();
        c934 = ((c934).replace(/\./g, ''));
    }
    if ($('#cod318').val().trim() != "") {
        c318 = $('#cod318').val().trim();
        c318 = ((c318).replace(/\./g, ''));
    }
    if ($('#cod232').val().trim() != "") {
        c232 = $('#cod232').val().trim();
        c232 = ((c232).replace(/\./g, ''));
    }
    if ($('#cod774').val().trim() != "") {
        c774 = $('#cod774').val().trim();
        c774 = ((c774).replace(/\./g, ''));
    }
    if ($('#cod931').val().trim() != "") {
        c931 = $('#cod931').val().trim();
        c931 = ((c931).replace(/\./g, ''));
    }
    if ($('#cod775').val().trim() != "") {
        c775 = $('#cod775').val().trim();
        c775 = ((c775).replace(/\./g, ''));
    }
    if ($('#cod979').val().trim() != "") {
        c979 = $('#cod979').val().trim();
        c979 = ((c979).replace(/\./g, ''));
    }
    if ($('#cod284').val().trim() != "") {
        c284 = $('#cod284').val().trim();
        c284 = ((c284).replace(/\./g, ''));
    }
    if ($('#cod225').val().trim() != "") {
        c225 = $('#cod225').val().trim();
        c225 = ((c225).replace(/\./g, ''));
    }
    if ($('#cod932').val().trim() != "") {
        c932 = $('#cod932').val().trim();
        c932 = ((c932).replace(/\./g, ''));
    }
    if ($('#cod883').val().trim() != "") {
        c883 = $('#cod883').val().trim();
        c883 = ((c883).replace(/\./g, ''));
    }
    if ($('#cod229').val().trim() != "") {
        c229 = $('#cod229').val().trim();
        c229 = ((c229).replace(/\./g, ''));
    }
    if ($('#cod624').val().trim() != "") {
        c624 = $('#cod624').val().trim();
        c624 = ((c624).replace(/\./g, ''));
    }
    if ($('#cod227').val().trim() != "") {
        c227 = $('#cod227').val().trim();
        c227 = ((c227).replace(/\./g, ''));
    }
    if ($('#cod776').val().trim() != "") {
        c776 = $('#cod776').val().trim();
        c776 = ((c776).replace(/\./g, ''));
    }
    if ($('#cod777').val().trim() != "") {
        c777 = $('#cod777').val().trim();
        c777 = ((c777).replace(/\./g, ''));
    }
    if ($('#cod782').val().trim() != "") {
        c782 = $('#cod782').val().trim();
        c782 = ((c782).replace(/\./g, ''));
    }
    if ($('#cod835').val().trim() != "") {
        c835 = $('#cod835').val().trim();
        c835 = ((c835).replace(/\./g, ''));
    }
    if ($('#cod791').val().trim() != "") {
        c791 = $('#cod791').val().trim();
        c791 = ((c791).replace(/\./g, ''));
    }
    if ($('#cod933').val().trim() != "") {
        c933 = $('#cod933').val().trim();
        c933 = ((c933).replace(/\./g, ''));
    }
    if ($('#cod889').val().trim() != "") {
        c889 = $('#cod889').val().trim();
        c889 = ((c889).replace(/\./g, ''));
    }
    if ($('#cod275').val().trim() != "") {
        c275 = $('#cod275').val().trim();
        c275 = ((c275).replace(/\./g, ''));
    }
    if ($('#cod226').val().trim() != "") {
        c226 = $('#cod226').val().trim();
        c226 = ((c226).replace(/\./g, ''));
    }
    if ($('#cod491').val().trim() != "") {
        c491 = $('#cod491').val().trim();
        c491 = ((c491).replace(/\./g, ''));
    }
    if ($('#cod479').val().trim() != "") {
        c479 = $('#cod479').val().trim();
        c479 = ((c479).replace(/\./g, ''));
    }
    if ($('#cod868').val().trim() != "") {
        c868 = $('#cod868').val().trim();
        c868 = ((c868).replace(/\./g, ''));
    }
    if ($('#cod883').val().trim() != "") {
        c883 = $('#cod883').val().trim();
        c883 = ((c883).replace(/\./g, ''));
    }
    if ($('#cod926').val().trim() != "") {
        c926 = $('#cod926').val().trim();
        c926 = ((c926).replace(/\./g, ''));
    }
    if ($('#cod632').val().trim() != "") {
        c632 = $('#cod632').val().trim();
        c632 = ((c632).replace(/\./g, ''));
    }
    if ($('#cod838').val().trim() != "") {
        c838 = $('#cod838').val().trim();
        c838 = ((c838).replace(/\./g, ''));
    }
    if ($('#cod936').val().trim() != "") {
        c936 = $('#cod936').val().trim();
        c936 = ((c936).replace(/\./g, ''));
    }
    if ($('#cod625').val().trim() != "") {
        c625 = $('#cod625').val().trim();
        c625 = ((c625).replace(/\./g, ''));
    }
    if ($('#cod935').val().trim() != "") {
        c935 = $('#cod935').val().trim();
        c935 = ((c935).replace(/\./g, ''));
    }
    if ($('#cod626').val().trim() != "") {
        c626 = $('#cod626').val().trim();
        c626 = ((c626).replace(/\./g, ''));
    }
    if ($('#cod939').val().trim() != "") {
        c939 = $('#cod939').val().trim();
        c939 = ((c939).replace(/\./g, ''));
    }
    if ($('#cod627').val().trim() != "") {
        c627 = $('#cod627').val().trim();
        c627 = ((c627).replace(/\./g, ''));
    }
    if ($('#cod904').val().trim() != "") {
        c904 = $('#cod904').val().trim();
        c904 = ((c904).replace(/\./g, ''));
    }
    if ($('#cod856').val().trim() != "") {
        c856 = $('#cod856').val().trim();
        c856 = ((c856).replace(/\./g, ''));
    }
    if ($('#cod746').val().trim() != "") {
        c746 = $('#cod746').val().trim();
        c746 = ((c746).replace(/\./g, ''));
    }
    if ($('#cod850').val().trim() != "") {
        c850 = $('#cod850').val().trim();
        c850 = ((c850).replace(/\./g, ''));
    }
    if ($('#cod461').val().trim() != "") {
        c461 = $('#cod461').val().trim();
        c461 = ((c461).replace(/\./g, ''));
    }
    if ($('#cod545').val().trim() != "") {
        c545 = $('#cod545').val().trim();
        c545 = ((c545).replace(/\./g, ''));
    }
    if ($('#cod645').val().trim() != "") {
        c645 = $('#cod645').val().trim();
        c645 = ((c645).replace(/\./g, ''));
    }
    if ($('#cod646').val().trim() != "") {
        c646 = $('#cod646').val().trim();
        c646 = ((c646).replace(/\./g, ''));
    }
    if ($('#cod912').val().trim() != "") {
        c912 = $('#cod912').val().trim();
        c912 = ((c912).replace(/\./g, ''));
    }
    if ($('#cod643').val().trim() != "") {
        c643 = $('#cod643').val().trim();
        c643 = ((c643).replace(/\./g, ''));
    }
    if ($('#cod167').val().trim() != "") {
        c167 = $('#cod167').val().trim();
        c167 = ((c167).replace(/\./g, ''));
    }

    if ($('#cod494').val().trim() != "") {
        c494 = $('#cod494').val().trim();
        c494 = ((c494).replace(/\./g, ''));
    }
    if ($('#cod224').val().trim() != "") {
        c224 = $('#cod224').val().trim();
        c224 = ((c224).replace(/\./g, ''));
    }
    if ($('#cod937').val().trim() != "") {
        c937 = $('#cod937').val().trim();
        c937 = ((c937).replace(/\./g, ''));
    }
    if ($('#cod845').val().trim() != "") {
        c845 = $('#cod845').val().trim();
        c845 = ((c845).replace(/\./g, ''));
    }
    if ($('#cod818').val().trim() != "") {
        c818 = $('#cod818').val().trim();
        c818 = ((c818).replace(/\./g, ''));
    }
    if ($('#cod842').val().trim() != "") {
        c842 = $('#cod842').val().trim();
        c842 = ((c842).replace(/\./g, ''));
    }
    if ($('#cod980').val().trim() != "") {
        c980 = $('#cod980').val().trim();
        c980 = ((c980).replace(/\./g, ''));
    }
    if ($('#cod981').val().trim() != "") {
        c981 = $('#cod981').val().trim();
        c981 = ((c981).replace(/\./g, ''));
    }
    if ($('#cod819').val().trim() != "") {
        c819 = $('#cod819').val().trim();
        c819 = ((c819).replace(/\./g, ''));
    }
    if ($('#cod837').val().trim() != "") {
        c837 = $('#cod837').val().trim();
        c837 = ((c837).replace(/\./g, ''));
    }
    if ($('#cod820').val().trim() != "") {
        c820 = $('#cod820').val().trim();
        c820 = ((c820).replace(/\./g, ''));
    }
    if ($('#cod228').val().trim() != "") {
        c228 = $('#cod228').val().trim();
        c228 = ((c228).replace(/\./g, ''));
    }
    if ($('#cod840').val().trim() != "") {
        c840 = $('#cod840').val().trim();
        c840 = ((c840).replace(/\./g, ''));
    }
    if ($('#cod836').val().trim() != "") {
        c836 = $('#cod836').val().trim();
        c836 = ((c836).replace(/\./g, ''));
    }
    if ($('#cod982').val().trim() != "") {
        c982 = $('#cod982').val().trim();
        c982 = ((c982).replace(/\./g, ''));
    }
    if ($('#cod320').val().trim() != "") {
        c320 = $('#cod320').val().trim();
        c320 = ((c320).replace(/\./g, ''));
    }
    if ($('#cod983').val().trim() != "") {
        c983 = $('#cod983').val().trim();
        c983 = ((c983).replace(/\./g, ''));
    }
    if ($('#cod828').val().trim() != "") {
        c828 = $('#cod828').val().trim();
        c828 = ((c828).replace(/\./g, ''));
    }
    if ($('#cod830').val().trim() != "") {
        c830 = $('#cod830').val().trim();
        c830 = ((c830).replace(/\./g, ''));
    }
    if ($('#cod829').val().trim() != "") {
        c829 = $('#cod829').val().trim();
        c829 = ((c829).replace(/\./g, ''));
    }
    if ($('#cod101').val().trim() != "") {
        c101 = $('#cod101').val().trim();
        c101 = ((c101).replace(/\./g, ''));
    }
    if ($('#cod784').val().trim() != "") {
        c784 = $('#cod784').val().trim();
        c784 = ((c784).replace(/\./g, ''));
    }
    if ($('#cod783').val().trim() != "") {
        c783 = $('#cod783').val().trim();
        c783 = ((c783).replace(/\./g, ''));
    }
    if ($('#cod977').val().trim() != "") {
        c977 = $('#cod977').val().trim();
        c977 = ((c977).replace(/\./g, ''));
    }
    if ($('#cod129').val().trim() != "") {
        c129 = $('#cod129').val().trim();
        c129 = ((c129).replace(/\./g, ''));
    }
    if ($('#cod647').val().trim() != "") {
        c647 = $('#cod647').val().trim();
        c647 = ((c647).replace(/\./g, ''));
    }
    if ($('#cod940').val().trim() != "") {
        c940 = $('#cod940').val().trim();
        c940 = ((c940).replace(/\./g, ''));
    }
    if ($('#cod648').val().trim() != "") {
        c648 = $('#cod648').val().trim();
        c648 = ((c648).replace(/\./g, ''));
    }
    if ($('#cod978').val().trim() != "") {
        c978 = $('#cod978').val().trim();
        c978 = ((c978).replace(/\./g, ''));
    }
    if ($('#cod815').val().trim() != "") {
        c815 = $('#cod815').val().trim();
        c815 = ((c815).replace(/\./g, ''));
    }
    if ($('#cod741').val().trim() != "") {
        c741 = $('#cod741').val().trim();
        c741 = ((c741).replace(/\./g, ''));
    }
    if ($('#cod122').val().trim() != "") {
        c122 = $('#cod122').val().trim();
        c122 = ((c122).replace(/\./g, ''));
    }
    if ($('#cod123').val().trim() != "") {
        c123 = $('#cod123').val().trim();
        c123 = ((c123).replace(/\./g, ''));
    }
    if ($('#cod102').val().trim() != "") {
        c102 = $('#cod102').val().trim();
        c102 = ((c102).replace(/\./g, ''));
    }
    if ($('#cod893').val().trim() != "") {
        c893 = $('#cod893').val().trim();
        c893 = ((c893).replace(/\./g, ''));
    }
    if ($('#cod894').val().trim() != "") {
        c894 = $('#cod894').val().trim();
        c894 = ((c894).replace(/\./g, ''));
    }
    if ($('#cod843').val().trim() != "") {
        c843 = $('#cod843').val().trim();
        c843 = ((c843).replace(/\./g, ''));
    }
    if ($('#cod844').val().trim() != "") {
        c844 = $('#cod844').val().trim();
        c844 = ((c844).replace(/\./g, ''));
    }
    if ($('#cod1003').val().trim() != "") {
        c1003 = $('#cod1003').val().trim();
        c1003 = ((c1003).replace(/\./g, ''));
    }
    if ($('#cod1004').val().trim() != "") {
        c1004 = $('#cod1004').val().trim();
        c1004 = ((c1004).replace(/\./g, ''));
    }
    if ($('#cod1005').val().trim() != "") {
        c1005 = $('#cod1005').val().trim();
        c1005 = ((c1005).replace(/\./g, ''));
    }
    if ($('#cod785').val().trim() != "") {
        c785 = $('#cod785').val().trim();
        c785 = ((c785).replace(/\./g, ''));
    }
    if ($('#cod950').val().trim() != "") {
        c950 = $('#cod950').val().trim();
        c950 = ((c950).replace(/\./g, ''));
    }
    if ($('#cod938').val().trim() != "") {
        c938 = $('#cod938').val().trim();
        c938 = ((c938).replace(/\./g, ''));
    }
    if ($('#cod942').val().trim() != "") {
        c942 = $('#cod942').val().trim();
        c942 = ((c942).replace(/\./g, ''));
    }
    if ($('#cod949').val().trim() != "") {
        c949 = $('#cod949').val().trim();
        c949 = ((c949).replace(/\./g, ''));
    }
    if ($('#cod637').val().trim() != "") {
        c637 = $('#cod637').val().trim();
        c637 = ((c637).replace(/\./g, ''));
    }
    if ($('#cod638').val().trim() != "") {
        c638 = $('#cod638').val().trim();
        c638 = ((c638).replace(/\./g, ''));
    }
    if ($('#cod492').val().trim() != "") {
        c492 = $('#cod492').val().trim();
        c492 = ((c492).replace(/\./g, ''));
    }
    if ($('#cod796').val().trim() != "") {
        c796 = $('#cod796').val().trim();
        c796 = ((c796).replace(/\./g, ''));
    }
    if ($('#cod799').val().trim() != "") {
        c799 = $('#cod799').val().trim();
        c799 = ((c799).replace(/\./g, ''));
    }
    if ($('#cod802').val().trim() != "") {
        c802 = $('#cod802').val().trim();
        c802 = ((c802).replace(/\./g, ''));
    }
    if ($('#cod797').val().trim() != "") {
        c797 = $('#cod797').val().trim();
        c797 = ((c797).replace(/\./g, ''));
    }
    if ($('#cod800').val().trim() != "") {
        c800 = $('#cod800').val().trim();
        c800 = ((c800).replace(/\./g, ''));
    }
    if ($('#cod803').val().trim() != "") {
        c803 = $('#cod803').val().trim();
        c803 = ((c803).replace(/\./g, ''));
    }
    if ($('#cod798').val().trim() != "") {
        c798 = $('#cod798').val().trim();
        c798 = ((c798).replace(/\./g, ''));
    }
    if ($('#cod801').val().trim() != "") {
        c801 = $('#cod801').val().trim();
        c801 = ((c801).replace(/\./g, ''));
    }
    if ($('#cod804').val().trim() != "") {
        c804 = $('#cod804').val().trim();
        c804 = ((c804).replace(/\./g, ''));
    }
    if ($('#cod853').val().trim() != "") {
        c853 = $('#cod853').val().trim();
        c853 = ((c853).replace(/\./g, ''));
    }
    if ($('#cod851').val().trim() != "") {
        c851 = $('#cod851').val().trim();
        c851 = ((c851).replace(/\./g, ''));
    }
    if ($('#cod229').val().trim() != "") {
        c229 = $('#cod229').val().trim();
        c229 = ((c229).replace(/\./g, ''));
    }
    if ($('#cod643').val().trim() != "") {
        c643 = $('#cod643').val().trim();
        c643 = ((c643).replace(/\./g, ''));
    }
    if ($('#cod808').val().trim() != "") {
        c808 = $('#cod808').val().trim();
        c808 = ((c808).replace(/\./g, ''));
    }
    if ($('#cod758').val().trim() != "") {
        c758 = $('#cod758').val().trim();
        c758 = ((c758).replace(/\./g, ''));
    }
    if ($('#cod809').val().trim() != "") {
        c809 = $('#cod809').val().trim();
        c809 = ((c809).replace(/\./g, ''));
    }
    if ($('#cod759').val().trim() != "") {
        c759 = $('#cod759').val().trim();
        c759 = ((c759).replace(/\./g, ''));
    }
    if ($('#cod760').val().trim() != "") {
        c760 = $('#cod760').val().trim();
        c760 = ((c760).replace(/\./g, ''));
    }
    if ($('#cod974').val().trim() != "") {
        c974 = $('#cod974').val().trim();
        c974 = ((c974).replace(/\./g, ''));

    }
    if ($('#cod975').val().trim() != "") {
        c975 = $('#cod975').val().trim();
        c975 = ((c975).replace(/\./g, ''));
    }
    if ($('#cod976').val().trim() != "") {
        c976 = $('#cod976').val().trim();
        c976 = ((c976).replace(/\./g, ''));
    }
    if ($('#cod943').val().trim() != "") {
        c943 = $('#cod943').val().trim();
        c943 = ((c943).replace(/\./g, ''));
    }
    if ($('#cod945').val().trim() != "") {
        c945 = $('#cod945').val().trim();
        c945 = ((c945).replace(/\./g, ''));
    }
    if ($('#cod947').val().trim() != "") {
        c947 = $('#cod947').val().trim();
        c947 = ((c947).replace(/\./g, ''));
    }
    if ($('#cod944').val().trim() != "") {
        c944 = $('#cod944').val().trim();
        c944 = ((c944).replace(/\./g, ''));
    }
    if ($('#cod946').val().trim() != "") {
        c946 = $('#cod946').val().trim();
        c946 = ((c946).replace(/\./g, ''));
    }
    if ($('#cod948').val().trim() != "") {
        c948 = $('#cod948').val().trim();
        c948 = ((c948).replace(/\./g, ''));
    }

    if ($('#cod373').val().trim() != "") {
        c373 = $('#cod373').val().trim();
        c373 = ((c373).replace(/\./g, ''));
    }
    if ($('#cod701').val().trim() != "") {
        c701 = $('#cod701').val().trim();
        c701 = ((c701).replace(/\./g, ''));
    }
    if ($('#cod702').val().trim() != "") {
        c702 = $('#cod702').val().trim();
        c702 = ((c702).replace(/\./g, ''));
    }
    if ($('#cod825').val().trim() != "") {
        c825 = $('#cod825').val().trim();
        c825 = ((c825).replace(/\./g, ''));
    }
    if ($('#cod827').val().trim() != "") {
        c827 = $('#cod827').val().trim();
        c827 = ((c827).replace(/\./g, ''));
    }
    if ($('#cod972').val().trim() != "") {
        c972 = $('#cod972').val().trim();
        c972 = ((c972).replace(/\./g, ''));
    }
    if ($('#cod973').val().trim() != "") {
        c973 = $('#cod973').val().trim();
        c973 = ((c973).replace(/\./g, ''));
    }
    if ($('#cod896').val().trim() != "") {
        c896 = $('#cod896').val().trim();
        c896 = ((c896).replace(/\./g, ''));
    }
    if ($('#cod617').val().trim() != "") {
        c617 = $('#cod617').val().trim();
        c617 = ((c617).replace(/\./g, ''));
    }

    //*******VALIDACIONES DE EXISTENCIA*********************************************************************************************


    //__________________________________f.41_______________________________________
    var mensaje = "Usted no puede solicitar Pago Provisional por Impuesto de Primera Categoría de utilidades absorbidas (Art. 31 N° 3, LIR), ya que no ha registrado Pérdida Tributaria en el código [643] del Recuadro N° 2, o bien porque no registra Créditos por Impuesto de Primera Categoría en el recuadro N° 6: Datos del FUT.";
    var anv_rev = "Reverso";
    var codigo = "167, 643, 625, 626";
    var id_val = "f.41";
    var val_f41 = true;


    if (parseInt(c167) != 0) {
        if ((parseInt(c643) < 0) && ((parseInt(c625) + parseInt(c626)) > 0 ) ) {

        }
        else {
            val_f41 = false;
            valido = false;
        }
    }




    if (val_f41 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(912)'>Ver</td></tr>"
    }
    //__________________________________FIN f.41_______________________________________

//__________________________________f.42_______________________________________
    var mensaje = "Usted debe declarar en línea 32 código 746 el incremento por impuestos pagados o retenidos en el exterior, declarados en el Recuadro N° 1 código 856, aún cuando no proceda su devolución, ya que constituye rebaja al Impuesto global complementario determinado según Art. 52 LIR.";
    var anv_rev = "Reverso";
    var codigo = "746";
    var id_val = "f.42";
    var val_f42 = true;

    if (parseInt(c856) != 0) {
        if (parseInt(c746) < parseInt(c856)) {
            val_f42 = false;
            valido = false;
        }
       
     }
       
       

    
    if (val_f42 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(746)'>Ver</td></tr>"
    }
//__________________________________FIN f.42_______________________________________

//__________________________________f.43_______________________________________
    var mensaje = "Usted no puede hacer uso de la Rebaja por Presunción de Asignación de Zona D.L. 889/75, código 850, si no ha percibido rentas de las Segunda Categoría y en particular del N° 2 del art. 42, declaradas en los códigos [461] y [545] del Recuadro N°1 : Honorarios";
    var anv_rev = "Reverso";
    var codigo = "850, 461, 545";
    var id_val = "f.43";
    var val_f43 = true;

    if (parseInt(c850) != 0) {
        if (parseInt(c461) + parseInt(c545) <= 0) {
            val_f42 = false;
            valido = false;
        }

    }




    if (val_f43 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(850)'>Ver</td></tr>"
    }
    //__________________________________FIN f.43_______________________________________


    
    //__________________________________f.59_______________________________________
    var mensaje = "Si usted declara Rentas Exentas de Impuesto de Primera Categoría (Art. 14 quáter y Art. 40 N° 7,(código [868]), entonces deberá marcar con una X el código [614] (Contabilidad Completa) y declara montos en el Capital Propio Tributario Positivo o Negativo ([645] .o. [646]).";
    var anv_rev = "Reverso";
    var codigo = "868";
    var id_val = "f.59";
    var val_f59 = true;
    

    if (parseInt(c868) > 0) {
        if ((c614 == true) && (c645 > 0 || c646 > 0)) {

        }
        else {
            val_f59 = false;
            valido = false;
        }


    }




    if (val_f59 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(868)'>Ver</td></tr>"
    }
    //__________________________________FIN f.59_______________________________________

    //__________________________________f.60_______________________________________
    var mensaje = "Usted no puede registrar Pago Provisional por Impuesto de Primera Categoría de utilidades absorbidas sin derecho a devolución (Art. 31 N° 3 y 41 A letra D N°7, LIR), ya que no ha registrado Pérdida Tributaria en el código [643] del Recuadro N° 2, o bien porque no registra Créditos por Impuesto de Primera Categoría en el recuadro N° 6: Datos del FUT.";
    var anv_rev = "Reverso";
    var codigo = "912, 643, 935, 904";
    var id_val = "f.60";
    var val_f60 = true;
   

    if (parseInt(c912) != 0) {
        if ((parseInt(c643) < 0) && ((parseInt(c935) + parseInt(c904)) > 0)) {
            
        }
        else {
            val_f60 = false;
            valido = false;
        }


    }




    if (val_f60 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(912)'>Ver</td></tr>"
    }
    //__________________________________FIN f.60_______________________________________


    //__________________________________f.62_______________________________________
    var mensaje = "Usted no puede registrar Pago Provisional por Impuesto de Primera Categoría de utilidades absorbidas sin derecho a devolución (Art. 31 N° 3 y 41 A letra D N°7, LIR), ya que la Pérdida Tributaria registrada en el código [229] del Recuadro N° 2, es inferior a los remanentes FUT registrados en los códigos [774] y [931].";
    var anv_rev = "Reverso";
    var codigo = "912, 229, 774, 931";
    var id_val = "f.62";
    var val_f60 = true;
    

    if (parseInt(c912) != 0) {
        if (parseInt(c229) >= (parseInt(c774) + parseInt(c931))) {
            
        }
        else {
            val_f60 = false;
            valido = false;
        }
    }




    if (val_f60 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(912)'>Ver</td></tr>"
    }
    //__________________________________FIN f.62_______________________________________


    //*******FÍN VALIDACIONES DE EXISTENCIA*********************************************************************************************




    //*******VALIDACIONES DE CODIGOS EXCLUYENTES*********************************************************************************************


    //__________________________________e.6_______________________________________
    var mensaje = "Debe registrar monto sólo en código 465 o sólo en código 494";
    var anv_rev = "Reverso";
    var codigo = "465, 494";
    var id_val = "e.6";
    var val_e6 = true;


    if (parseInt(c465) > 0) {
        if (parseInt(c494) != 0 ) {
            val_e6 = false;
            valido = false;
        }
      
    }
     if (val_e6 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(465)'>Ver</td></tr>"
    }
    //__________________________________FIN e.6_______________________________________

    //__________________________________e.7_______________________________________
     var mensaje = "Debe registrar monto sólo en código 465 o sólo en código 494";
     var anv_rev = "Reverso";
     var codigo = "465, 494";
     var id_val = "e.7";
     var val_e7 = true;


     if (parseInt(c494) > 0) {
         if (parseInt(c465) != 0) {
             val_e7 = false;
             valido = false;
         }

     }
     if (val_e7 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(465)'>Ver</td></tr>"
     }
    //__________________________________FIN e.7_______________________________________

    //__________________________________e.8_______________________________________
     var mensaje = "Para descontar gastos presuntos (cód. 494) usted debe ser Persona Natural";
     var anv_rev = "Reverso";
     var codigo = "494";
     var id_val = "e.8";
     var val_e8 = true;
     

     if (parseInt(c494) > 0) {
         if (tipo_perso != "1") {
             val_e8 = false;
             valido = false;
         }

     }
     if (val_e8 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(494)'>Ver</td></tr>"
     }
    //__________________________________FIN e.8_______________________________________


    //__________________________________e.27_______________________________________
     var mensaje = "Si completó códigos del recuadro Nro 6 'Datos del FUT', debe completar el código 645 o 646 referentes al capital propio.";
     var anv_rev = "Reverso";
     var codigo = "645, 646";
     var id_val = "e.27";
     var val_e27 = true;


     if (parseInt(c224) != 0 || parseInt(c774) != 0 || parseInt(c931) != 0 || parseInt(c775) != 0 || parseInt(c979) != 0 || parseInt(c284) != 0 || parseInt(c225) != 0 || parseInt(c932) != 0 || parseInt(c883) != 0 || parseInt(c229) != 0 || parseInt(c624) != 0 || parseInt(c227) != 0 || parseInt(c776) != 0 || parseInt(c777) != 0 || parseInt(c782) != 0 || parseInt(c835) != 0 || parseInt(c791) != 0 || parseInt(c933) != 0 || parseInt(c889) != 0 || parseInt(c275) != 0 || parseInt(c226) != 0 || parseInt(c231) != 0 || parseInt(c934) != 0 || parseInt(c318) != 0 || parseInt(c232) != 0 || parseInt(c625) != 0 || parseInt(c935) != 0 || parseInt(c626) != 0 || parseInt(c939) != 0 || parseInt(c627) != 0 || parseInt(c904) != 0 || parseInt(c838) != 0 || parseInt(c936) != 0 || parseInt(c937) != 0 || parseInt(c845) != 0 || parseInt(c818) != 0 || parseInt(c842) != 0 || parseInt(c980) != 0 || parseInt(c981) != 0 || parseInt(c819) != 0 || parseInt(c837) != 0 || parseInt(c820) != 0 || parseInt(c228) != 0 || parseInt(c840) != 0 || parseInt(c836) != 0 || parseInt(c982) != 0 || parseInt(c320) != 0 || parseInt(c983) != 0 || parseInt(c828) != 0 || parseInt(c830) != 0 || parseInt(c829) != 0) {
         if ((parseInt(c645) == 0 && parseInt(c646) > 0) || (parseInt(c646) == 0 && parseInt(c645) > 0)) {
            //nothing...
         }
         else {
             val_e27 = false;
             valido = false;

         }

     }
     if (val_e27 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(645)'>Ver</td></tr>"
     }
    //__________________________________FIN e.27_______________________________________

    //__________________________________e.28_______________________________________
     var mensaje = "Si completó códigos del recuadro N°3 “Datos contables balance 8 columnas y otros”, debe completar el código [645] o [646] referentes al Capital Propio.";
     var anv_rev = "Reverso";
     var codigo = "645, 646";
     var id_val = "e.28";
     var val_e28 = true;


     if (parseInt(c101) != 0 || parseInt(c784) != 0 || parseInt(c783) != 0 || parseInt(c977) != 0 || parseInt(c129) != 0 || parseInt(c647) != 0 || parseInt(c940) != 0 || parseInt(c648) != 0 || parseInt(c978) != 0 || parseInt(c815) != 0 || parseInt(c741) != 0 || parseInt(c122) != 0 || parseInt(c123) != 0 || parseInt(c102) != 0 || parseInt(c893) != 0 || parseInt(c894) != 0 || parseInt(c843) != 0 || parseInt(c844) != 0 || parseInt(c1003) != 0 || parseInt(c1004) != 0 || parseInt(c1005) != 0 || parseInt(c785) != 0 || parseInt(c950) != 0 || parseInt(c938) != 0 || parseInt(c942) != 0 || parseInt(c949) != 0) {
         if ((parseInt(c645) == 0 && parseInt(c646) > 0) || (parseInt(c646) == 0 && parseInt(c645) > 0)) {
             //nothing...
         }
         else {
             val_e28 = false;
             valido = false;

         }

     }
     if (val_e28 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(645)'>Ver</td></tr>"
     }
    //__________________________________FIN e.28_______________________________________


    //__________________________________e.32_______________________________________
     var mensaje = "Usted no puede ingresar saldo acreedor en la cuenta corrección monetaria si ya ingresó saldo deudor.";
     var anv_rev = "Reverso";
     var codigo = "637, 638";
     var id_val = "e.32";
     var val_e32 = true;


     if (parseInt(c637) > 0 ) {
         if (parseInt(c638) != 0) {
             val_e32 = false;
             valido = false;
         }
 
     }
     if (val_e32 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(638)'>Ver</td></tr>"
     }
    //__________________________________FIN e.32_______________________________________


    //__________________________________e.33_______________________________________
     var mensaje = "Usted no puede ingresar saldo deudor en la cuenta corrección monetaria si ingresó saldo acreedor.";
     var anv_rev = "Reverso";
     var codigo = "637, 638";
     var id_val = "e.33";
     var val_e33 = true;


     if (parseInt(c638) > 0) {
         if (parseInt(c637) != 0) {
             val_e33 = false;
             valido = false;
         }

     }
     if (val_e33 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(638)'>Ver</td></tr>"
     }
    //__________________________________FIN e.33_______________________________________

    //__________________________________e.42_______________________________________
     var mensaje = "Usted no puede registrar depreciación instantánea del ejercicio y depreciación acelerada extraordinaria del ejercicio.";
     var anv_rev = "Reverso";
     var codigo = "942, 943";
     var id_val = "e.42";
     var val_e42 = true;


     if (parseInt(c942) > 0) {
         if (parseInt(c949) != 0) {
             val_e42 = false;
             valido = false;
         }

     }
     if (val_e42 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(942)'>Ver</td></tr>"
     }
    //__________________________________FIN e.42_______________________________________


    //__________________________________e.43_______________________________________
     var mensaje = "Usted no puede registrar depreciación instantánea del ejercicio y depreciación acelerada extraordinaria del ejercicio.";
     var anv_rev = "Reverso";
     var codigo = "942, 943";
     var id_val = "e.43";
     var val_e43 = true;


     if (parseInt(c949) > 0) {
         if (parseInt(c942) != 0) {
             val_e43 = false;
             valido = false;
         }

     }
     if (val_e43 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(942)'>Ver</td></tr>"
     }
    //__________________________________FIN e.42_______________________________________



    //*******FÍN VALIDACIONES DE CODIGOS EXCLUYENTES*********************************************************************************************


    //*******VALIDACIONES DE CODIGOS INCLUYENTES*********************************************************************************************

    //__________________________________d.22_______________________________________
     var mensaje = "Como ingresó datos en código 461 debe ingresar datos en código 492";
     var anv_rev = "Reverso";
     var codigo = "461, 492";
     var id_val = "d.22";
     var val_d22 = true;


     if (parseInt(c461) > 0) {
         if (parseInt(c492) == 0) {
             val_d22 = false;
             valido = false;
         }

     }
     if (val_d22 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(492)'>Ver</td></tr>"
     }
    //__________________________________FIN d.22_______________________________________


    //__________________________________d.23_______________________________________
     var mensaje = "Como ingresó datos en código 492 debe ingresar datos en código 461";
     var anv_rev = "Reverso";
     var codigo = "461, 492";
     var id_val = "d.23";
     var val_d23 = true;


     if (parseInt(c492) > 0) {
         if (parseInt(c461) == 0) {
             val_d23 = false;
             valido = false;
         }

     }
     if (val_d23 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(492)'>Ver</td></tr>"
     }
    //__________________________________FIN d.23_______________________________________

    //__________________________________d.24_______________________________________
     var mensaje = "Como ingresó datos en código 479 debe ingresar datos en código 491";
     var anv_rev = "Reverso";
     var codigo = "479, 491";
     var id_val = "d.24";
     var val_d24 = true;


     if (parseInt(c479) > 0) {
         if (parseInt(c491) == 0) {
             val_d24 = false;
             valido = false;
         }

     }
     if (val_d24 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(491)'>Ver</td></tr>"
     }
    //__________________________________FIN d.24_______________________________________


    //__________________________________d.25_______________________________________
     var mensaje = "Como ingresó datos en código 491 debe ingresar datos en código 479";
     var anv_rev = "Reverso";
     var codigo = "479, 491";
     var id_val = "d.25";
     var val_d25 = true;


     if (parseInt(c491) > 0) {
         if (parseInt(c479) == 0) {
             val_d25 = false;
             valido = false;
         }

     }
     if (val_d25 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(479)'>Ver</td></tr>"
     }
    //__________________________________FIN d.25_______________________________________



    //__________________________________d.46_______________________________________
     var mensaje = "ingresar datos mayores a cero en los códigos 796 y 799 (Recuadro N° 5).";
     var anv_rev = "Reverso";
     var codigo = "796, 799, 802";
     var id_val = "d.46";
     var val_d46 = true;


     if (parseInt(c796) + parseInt(c799) + parseInt(c802) > 0) {
         if (parseInt(c796) <= 0 && parseInt(c799) <= 0) {
             val_d46 = false;
             valido = false;
         }

     }
     if (val_d46 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(796)'>Ver</td></tr>"
     }
    //__________________________________FIN d.46_______________________________________


    //__________________________________d.47_______________________________________
     var mensaje = "ingresar datos mayores a cero en los códigos 797 y 800 (Recuadro N° 5).";
     var anv_rev = "Reverso";
     var codigo = "797, 800, 803";
     var id_val = "d.47";
     var val_d47 = true;


     if (parseInt(c797) + parseInt(c800) + parseInt(c803) > 0) {
         if (parseInt(c797) <= 0 && parseInt(c800) <= 0) {
             val_d47 = false;
             valido = false;
         }

     }
     if (val_d47 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(797)'>Ver</td></tr>"
     }
    //__________________________________FIN d.47_______________________________________




    //__________________________________d.48_______________________________________
     var mensaje = "ingresar datos mayores a cero en los códigos 798 y 801 (Recuadro N° 5).";
     var anv_rev = "Reverso";
     var codigo = "798, 801, 804";
     var id_val = "d.48";
     var val_d48 = true;


     if (parseInt(c798) + parseInt(c801) + parseInt(c804) > 0) {
         if (parseInt(c798) <= 0 && parseInt(c801) <= 0) {
             val_d48 = false;
             valido = false;
         }

     }
     if (val_d48 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(798)'>Ver</td></tr>"
     }
    //__________________________________FIN d.48_______________________________________


    //__________________________________d.82_______________________________________
     var mensaje = "Como ingresó datos en código 853 debe ingresar datos en código 851";
     var anv_rev = "Reverso";
     var codigo = "853, 851";
     var id_val = "d.82";
     var val_d82 = true;


     if (parseInt(c853) > 0) {
         if (parseInt(c851) <= 0 ) {
             val_d82 = false;
             valido = false;
         }

     }
     if (val_d82 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(851)'>Ver</td></tr>"
     }
    //__________________________________FIN d.82_______________________________________



    //__________________________________d.83_______________________________________
     var mensaje = "Debe revisar el monto declarado por concepto de Pérdida Tributaria 1° Categoría del ejercicio, código [229] del Recuadro N°6, en relación a la perdida tributaria declarada en el código [643] del Recuadro N°2 y los códigos 808, 758, 809, 759 y 760 del mismo recuadro.";
     var anv_rev = "Reverso";
     var codigo = "643, 808, 758, 809, 759, 760, 974, 975, 976, 614";
     var id_val = "d.83";
     var val_d83 = true;


     if ((parseInt(c643) + parseInt(c808) + parseInt(c758) + parseInt(c809) + parseInt(c759) + parseInt(c760) + parseInt(c974) + parseInt(c975) + parseInt(c976) < 0) && (c614 == true)) {
         var resultado = parseInt(c643) + parseInt(c808) + parseInt(c758) + parseInt(c809) + parseInt(c759) + parseInt(c760) + parseInt(c974) + parseInt(c975) + parseInt(c976);
         if (resultado < 0) {
             resultado = resultado * -1;
         }
         if (parseInt(c229) != resultado) {
             val_d83 = false;
             valido = false;
         }

     }
     if (val_d83 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(229)'>Ver</td></tr>"
     }
    //__________________________________FIN d.83_______________________________________



    //__________________________________d.84_______________________________________
     var mensaje = "Debe revisar el monto declarado por concepto de Remanente de Crédito Impuesto 1° categoría ejercicio siguiente con derecho a devolución";
     var anv_rev = "Reverso";
     var codigo = "838, 625, 626, 627";
     var id_val = "d.84";
     var val_d84 = true;


     if (parseInt(c838) > 0 ) {
         var resultado = parseInt(c625) + parseInt(c626) - parseInt(c627) ;
         if (resultado < 0) {
             resultado = resultado * -1;
         }
         if (parseInt(c838) != resultado) {
             val_d84 = false;
             valido = false;
         }

     }
     if (val_d84 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(838)'>Ver</td></tr>"
     }
    //__________________________________FIN d.84_______________________________________



    //__________________________________d.85_______________________________________
     var mensaje = "Debe revisar el monto declarado por concepto de Remanente de Crédito Impuesto 1° categoría ejercicio siguiente sin derecho a devolución";
     var anv_rev = "Reverso";
     var codigo = "936, 935, 939, 904";
     var id_val = "d.85";
     var val_d85 = true;


     if (parseInt(c936) > 0) {
         var resultado = parseInt(c935) + parseInt(c939) - parseInt(c904);
         if (resultado < 0) {
             resultado = resultado * -1;
         }
         if (parseInt(c936) != resultado) {
             val_d85 = false;
             valido = false;
         }

     }
     if (val_d85 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(838)'>Ver</td></tr>"
     }
    //__________________________________FIN d.85_______________________________________



    //__________________________________d.86_______________________________________
     var mensaje = "Debe ingresar datos mayores a cero en los códigos 943 y 945 (Recuadro N°5)";
     var anv_rev = "Reverso";
     var codigo = "943, 945, 947";
     var id_val = "d.86";
     var val_d86 = true;


     if (parseInt(c943) + parseInt(c945) + parseInt(c947) > 0) {
         
         if ((parseInt(c943) <= 0) && (parseInt(c945) <= 0)) {
             val_d86 = false;
             valido = false;
         }
         
     }
     if (val_d86 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(943)'>Ver</td></tr>"
     }
    //__________________________________FIN d.86_______________________________________




    //__________________________________d.87_______________________________________
     var mensaje = "Debe ingresar datos mayores a cero en los códigos 944 y 946 (Recuadro N°5)";
     var anv_rev = "Reverso";
     var codigo = "944, 946, 948";
     var id_val = "d.87";
     var val_d87 = true;


     if (parseInt(c944) + parseInt(c946) + parseInt(c948) > 0) {

         if ((parseInt(c944) <= 0) && (parseInt(c946) <= 0)) {
             val_d87 = false;
             valido = false;
         }

     }
     if (val_d87 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(944)'>Ver</td></tr>"
     }
    //__________________________________FIN d.87_______________________________________



    //*******FÍN VALIDACIONES DE CODIGOS INCLUYENTES*********************************************************************************************

    //********COTAS A LOS CÓDIGOS*********************************************************************************************
    //__________________________________c.11_______________________________________
     var mensaje = "El valor registrado en el código 373 supera el máximo permitido.";
     var anv_rev = "Reverso";
     var codigo = "373";
     var id_val = "c.11";
     var val_c11 = true;

         if (parseInt(c373) > p37)  {
             val_c11 = false;
             valido = false;
         }

     
     if (val_c11 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(373)'>Ver</td></tr>"
     }
    //__________________________________FIN c.11_______________________________________

    //__________________________________c.26_______________________________________
     var mensaje = "El valor registrado en el código 702 supera el máximo permitido.";
     var anv_rev = "Reverso";
     var codigo = "702";
     var id_val = "c.26";
     var val_c26 = true;

     if (parseInt(c702) > parseInt(c701)) {
         val_c26 = false;
         valido = false;
     }


     if (val_c26 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(702)'>Ver</td></tr>"
     }
    //__________________________________FIN c.26_______________________________________


    //__________________________________c.37_______________________________________
     var mensaje = "El valor registrado en el código 827 supera el máximo permitido.";
     var anv_rev = "Reverso";
     var codigo = "827";
     var id_val = "c.37";
     var val_c37 = true;

     if (parseInt(c827) > parseInt(c825)) {
         val_c37 = false;
         valido = false;
     }


     if (val_c37 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(701)'>Ver</td></tr>"
     }
    //__________________________________FIN c.37_______________________________________



    //__________________________________c.42_______________________________________
     var mensaje = "El monto registrado en el código 868 no debe exceder la Renta Líquida Ajustada que considera los siguientes códigos 972, 973, 226, 275 y 820 ni el tope de 1.440 UTM.";
     var anv_rev = "Reverso";
     var codigo = "868";
     var id_val = "c.42";
     var val_c42 = true;

     var resultado = parseInt(c972) - parseInt(c973) - parseInt(c226) - parseInt(c275) - parseInt(c820);

     if (resultado < 0) {
         resultado = resultado * -1;
     }

     if (resultado < p344) {
         if (parseInt(c868) > resultado) {
             val_c42 = false;
             valido = false;
         }
     }

     if (resultado > p344) {
         if (parseInt(c868) > p344) {
             val_c42 = false;
             valido = false;
         }
     }

   

     if (val_c42 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(701)'>Ver</td></tr>"
     }
    //__________________________________FIN c.42_______________________________________


    //__________________________________c.49_______________________________________
     var mensaje = "El valor registrado en el código 896 debe ser mayor o igual a código [617]";
     var anv_rev = "Reverso";
     var codigo = "896";
     var id_val = "c.49";
     var val_c49 = true;

     if (parseInt(c896) < parseInt(c617)) {
         val_c49 = false;
         valido = false;
     }


     if (val_c49 == false) {

         table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(896)'>Ver</td></tr>"
     }
    //__________________________________FIN c.49_______________________________________



    //********FÍN COTAS A LOS CÓDIGOS*********************************************************************************************

    //********REGLAS MATEMATICAS REVERSO*********************************************************************************************

    
    //***************a.4********************
    var mensaje = "El monto registrado en el código 494 debe corresponder al mínimo entre 30% del valor declarado en el código 547 y el tope de 15 UTA.";
    var anv_rev = "Reverso";
    var codigo = "494";
    var id_val = "a.4";
    var val_a4 = true;
    if (parseInt(c465) == 0 && tipo_perso == 1) {
        
        var val1 = p08 * parseInt(c547);
        if (val1 < p42) {
            if ($('#cod494').val() != val1) {
                val_a4 = false;
                valido = false;
            }
        }
        if (val1 > p42) {
            if ($('#cod494').val() != p42) {
                val_a4 = false;
                valido = false;
            }
        }
        
    }
    if (val_a4 == false) {
        
        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(494)'>Ver</td></tr>"
    }
    //***************FIN a.4********************

    //***************a.11********************
    var mensaje = "El valor registrado en el código 705  es inferior al mínimo establecido.";
    var anv_rev = "Reverso";
    var codigo = "705";
    var id_val = "a.11";
    var val_a11 = true;

    var aux = parseInt(c704) - parseInt(c930);
    if (aux < 0) {
        aux = aux * -1;
    }
    if (c705  != aux && c705 < aux) {
        val_a11 = false;
        valido = false;
    }
   
    if (val_a11 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(705)'>Ver</td></tr>"
    }
    //***************FIN a.11********************


    //***************a.13********************
    var mensaje = "Los remanentes del F.U.T. (códigos 231, 934 y 318) o Saldo Negativo para el ejercicio siguiente (código 232) del Recuadro N° 6 no cuadran con los datos del F.U.T., contenidos en el mismo recuadro.";
    var anv_rev = "Reverso";
    var codigo = "231, 934, 318, 232";
    var id_val = "a.13";
    var val_a13 = true;

    var aux1 = parseInt(c231) + parseInt(c934) + parseInt(c318) - parseInt(c232);
    var aux2 = parseInt(c774) + parseInt(c931) + parseInt(c775) - parseInt(c979) - parseInt(c284) + parseInt(c225) - parseInt(c932) + parseInt(c883) - parseInt(c229) - parseInt(c624) + parseInt(c227) + parseInt(c776) + parseInt(c777) + parseInt(c782) + parseInt(c835) + parseInt(c791) - parseInt(c933) - parseInt(c889) - parseInt(c275) - parseInt(c226);
    if (aux1 != aux2) {
        val_a13 = false;
        valido = false;
    }
    

    if (val_a13 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(231)'>Ver</td></tr>"
    }
    //***************FIN a.13********************


    //***************a.16********************
    var mensaje = "El valor declarado en el código 491 es incorrecto.";
    var anv_rev = "Reverso";
    var codigo = "491";
    var id_val = "a.16";
    var val_a16 = true;

    if (subtipo_perso == "1") {
        if (c491 > (c479 * p22)) {
            val_a16 = false;
            valido = false;
        }
       
    }
    if (subtipo_perso == "2") {
        if (c491 > (c479 * p474)) {
            val_a16 = false;
            valido = false;
        }

    }


    if (val_a16 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(491)'>Ver</td></tr>"
    }
    //***************FIN a.16********************

    //***************a.23********************
    var mensaje = "El monto registrado en el código 868 debe ser igual al monto registrado en el código 883";
    var anv_rev = "Reverso";
    var codigo = "868";
    var id_val = "a.23";
    var val_a23 = true;

   
        if (c868 != c883) {
            val_a23 = false;
            valido = false;
        }

    
    


    if (val_a23 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(868)'>Ver</td></tr>"
    }
    //***************FIN a.23********************

    //***************a.27********************
    var mensaje = "El monto registrado en el código 926 debe ser igual al monto registrado en el código 632.";
    var anv_rev = "Reverso";
    var codigo = "926";
    var id_val = "a.27";
    var val_a27 = true;


    if (c926 != c632) {
        val_a27 = false;
        valido = false;
    }

    if (val_a27 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(926)'>Ver</td></tr>"
    }
    //***************FIN a.27********************

    //***************a.30********************
    var mensaje = "La suma de los montos registrados en los códigos 838 y 936 no cuadran con los datos del FUT contenidos en el mismo recuadro.";
    var anv_rev = "Reverso";
    var codigo = "838, 936";
    var id_val = "a.30";
    var val_a30 = true;

    var aux = parseInt(c625) + parseInt(c935) + parseInt(c626) + parseInt(c939) - parseInt(c627) - parseInt(c904);
    var aux2 = parseInt(c838) + parseInt(c936);
    if (aux < 0) {
        aux = aux * -1;
    }
    if (aux != aux2) {
        val_a30 = false;
        valido = false;
    }

    if (val_a30 == false) {

        table = table + "<tr style='background-color:#fff;'> <td>" + codigo + "</td> <td>" + anv_rev + "</td><td>" + id_val + "</td><td width='400px'>" + mensaje + "</td><td style='cursor:pointer;' onclick='ver_cod(838)'>Ver</td></tr>"
    }
    //***************FIN a.30********************


    //*******FÍN REGLAS MATEMATICAS*********************************************************************************************





    //_________cargamos las validaciones en el lightbox______________________________________________________________________
    if (valido == false) {
        table = table + "</table>";
        $('#validaciones').fadeIn('slow');
        $('#validation').html(table);
    }
    else {
        var msje = "<div style='text-align:center;width:100%;'>NO HAY ERRORES SEGÚN VALIDACIONES DEL SII</div>";
       
        $('#validaciones').fadeIn('slow');
        $('#validation').html(msje);
    }
}