
//ponemos en variable el modulo
var app = angular.module("app1", ["LocalStorageModule"]);

//declaramos un controlador y ejecutamos una funcion
app.controller("controlador", function ($scope, localStorageService,$http) {
    

    //** Inicializamos valores de todas las líneas**
    

    //**inicializamos linea 1**
    $scope.linea1 = [];
    $scope.totalLinea1 = 0;
    $scope.totalLinea2 = 0;
    $scope.totalLinea3 = 0;
    $scope.totalLinea4 = 0;
    $scope.totalLinea5 = 0;
    //$scope.totalLinea6 = 0;
    $scope.totalLinea7 = 0;
    $scope.totalLinea8 = 0;
    $scope.totalLinea9 = 0;
    $scope.totalLinea10 = 0;
    //*********************

    //**inicializamos linea 2**
    $scope.linea2 = [];
    $scope.totalLinea2_1 = 0;
    $scope.totalLinea2_2 = 0;
    $scope.totalLinea2_3 = 0;
    $scope.totalLinea2_4 = 0;
    $scope.totalLinea2_5 = 0;
    $scope.totalLinea2_6 = 0;
    $scope.totalLinea2_7 = 0;
    $scope.totalLinea2_8 = 0;
    $scope.totalLinea2_9 = 0;
    
    //*********************

    //**inicializamos linea 4**
    $scope.linea4 = [];
    $scope.totalLinea4_1 = 0;
    $scope.totalLinea4_2 = 0;
    $scope.totalLinea4_3 = 0;
    $scope.totalLinea4_4 = 0;
    //*********************

    //**inicializamos linea 8**
    $scope.linea8 = [];
    $scope.totalLinea8_1 = 0;
    $scope.totalLinea8_2 = 0;
    $scope.totalLinea8_3 = 0;
    $scope.totalLinea8_4 = 0;
    $scope.totalLinea8_5 = 0;
    //*********************

    //**inicializamos linea 10**
    $scope.linea10 = [];
    $scope.totallinea10_1 = 0;
    $scope.totallinea10_2 = 0;
    $scope.totallinea10_3 = 0;
    $scope.totallinea10_4 = 0;
    $scope.totallinea10_5 = 0;
    $scope.totallinea10_6 = 0;
    //*********************

    //**inicializamos codigos**
    $scope.c847 = 0;
    $scope.c600 = 0;
    $scope.c104 = 0;
    $scope.c603 = 0;
    $scope.c108 = 0;
    $scope.c606 = 0;
    $scope.c152 = 0;
    $scope.c601 = 0;
    $scope.c105 = 0;
    //*********************

    //**traemos info almacenada en la DB del contribuyente**
    var id_user = $('#id_user').text();
    var a_trib = $('#a_trib').text();
    var id_contri = $('#id_contri').text();

    $http.post("contribuyente.aspx/cargar_info", {
        id_contri: id_contri, id_user: id_user, a_trib: a_trib
    })
            .success(function (data) {

                //console.log(data.d);
                var datos = data.d;
                //************cargamos la linea 1*************************************
                var linea1 = datos["lineas"]["linea1"];
                var total1 = 0;
                var total2 = 0;
                var total3 = 0;
                var total4 = 0;
                var total5 = 0;
                var total6 = 0;
                var total7 = 0;
                var total8 = 0;
                var total9 = 0;
                var total10 = 0;
                var total11 = 0;
                for (var i = 0; i < linea1["cantidad_lineas"]; i++) {
                    $scope.linea1.push({ id: linea1["id" + i], sociedad: linea1["sociedad_" + i], v1: linea1["v1_" + i], v2: linea1["v2_" + i], v3: linea1["v3_" + i], v4: linea1["v4_" + i], v5: linea1["v5_" + i], v6: linea1["v6_" + i], v7: linea1["v7_" + i], v8: linea1["v8_" + i], v9: linea1["v9_" + i], v10: linea1["v10_" + i], v11: linea1["v11_" + i] });
                     total1 = parseInt(total1) + parseInt(linea1["v1_" + i]);
                     total2 = parseInt(total2) + parseInt(linea1["v2_" + i]);
                     total3 = parseInt(total3) + parseInt(linea1["v3_" + i]);
                     total4 = parseInt(total4) + parseInt(linea1["v4_" + i]);
                     total5 = parseInt(total5) + parseInt(linea1["v5_" + i]);
                     total6 = parseInt(total6) + parseInt(linea1["v6_" + i]);
                     total7 = parseInt(total7) + parseInt(linea1["v7_" + i]);
                     total8 = parseInt(total8) + parseInt(linea1["v8_" + i]);
                     total9 = parseInt(total9) + parseInt(linea1["v9_" + i]);
                     total10 = parseInt(total10) + parseInt(linea1["v10_" + i]);
                     total11 = parseInt(total11) + parseInt(linea1["v11_" + i]);
                }
                //totalizamos
                $scope.totalLinea1 = total1;
                $scope.totalLinea2 = total2;
                $scope.totalLinea3 = total3;
                $scope.totalLinea4 = total4;
                $scope.totalLinea5 = total5;
                $scope.totalLinea6 = total6;
                $scope.totalLinea7 = total7;
                $scope.totalLinea8 = total8;
                $scope.totalLinea9 = total9;
                $scope.totalLinea10 = total10;
                

                //***************************************************************
                //************cargamos la linea 2*************************************
                var linea2 = datos["lineas"]["linea2"];
                var total1 = 0;
                var total2 = 0;
                var total3 = 0;
                var total4 = 0;
                var total5 = 0;
                var total6 = 0;
                var total7 = 0;
                var total8 = 0;
                var total9 = 0;
                
                for (var i = 0; i < linea2["cantidad_lineas"]; i++) {
                    $scope.linea2.push({ id: linea2["id" + i], sociedad: linea2["sociedad_" + i], v1: linea2["v1_" + i], v2: linea2["v2_" + i], v3: linea2["v3_" + i], v4: linea2["v4_" + i], v5: linea2["v5_" + i], v6: linea2["v6_" + i], v7: linea2["v7_" + i], v8: linea2["v8_" + i], v9: linea2["v9_" + i]});
                    total1 = parseInt(total1) + parseInt(linea2["v1_" + i]);
                    total2 = parseInt(total2) + parseInt(linea2["v2_" + i]);
                    total3 = parseInt(total3) + parseInt(linea2["v3_" + i]);
                    total4 = parseInt(total4) + parseInt(linea2["v4_" + i]);
                    total5 = parseInt(total5) + parseInt(linea2["v5_" + i]);
                    total6 = parseInt(total6) + parseInt(linea2["v6_" + i]);
                    total7 = parseInt(total7) + parseInt(linea2["v7_" + i]);
                    total8 = parseInt(total8) + parseInt(linea2["v8_" + i]);
                    total9 = parseInt(total9) + parseInt(linea2["v9_" + i]);
                   
                }
                //totalizamos
                $scope.totalLinea2_1 = total1;
                $scope.totalLinea2_2 = total2;
                $scope.totalLinea2_3 = total3;
                $scope.totalLinea2_4 = total4;
                $scope.totalLinea2_5 = total5;
                $scope.totalLinea2_6 = total6;
                $scope.totalLinea2_7 = total7;
                $scope.totalLinea2_8 = total8;
                $scope.totalLinea2_9 = total9;
                


                //***************************************************************
                //************cargamos la linea 4*************************************
                var linea4 = datos["lineas"]["linea4"];
                var total1 = 0;
                var total2 = 0;
                var total3 = 0;
                var total4 = 0;
                for (var i = 0; i < linea4["cantidad_lineas"]; i++) {
                    $scope.linea4.push({ id: linea4["id" + i], sociedad: linea4["sociedad_" + i], v1: linea4["v3_" + i], v2: linea4["v1_" + i], v3: linea4["v2_" + i], v4: linea4["v4_" + i]});
                    total1 = parseInt(total1) + parseInt(linea4["v3_" + i]);
                    total2 = parseInt(total2) + parseInt(linea4["v1_" + i]);
                    total3 = parseInt(total3) + parseInt(linea4["v2_" + i]);
                    total4 = parseInt(total4) + parseInt(linea4["v4_" + i]);
                    
                }
                //totalizamos
                $scope.totalLinea4_1 = total1;
                $scope.totalLinea4_2 = total2;
                $scope.totalLinea4_3 = total3;
                $scope.totalLinea4_4 = total4;
               


                //***************************************************************

                //************cargamos la linea 8*************************************
                var linea8 = datos["lineas"]["linea8"];
                var total1 = 0;
                var total2 = 0;
                var total3 = 0;
                var total4 = 0;
                var total5 = 0;
                for (var i = 0; i < linea8["cantidad_lineas"]; i++) {
                    $scope.linea8.push({ id: linea8["id" + i], sociedad: linea8["sociedad_" + i], v1: linea8["v1_" + i], v2: linea8["v2_" + i], v3: linea8["v3_" + i], v4: linea8["v4_" + i], v5: linea8["v5_" + i] });
                    total1 = parseInt(total1) + parseInt(linea8["v1_" + i]);
                    total2 = parseInt(total2) + parseInt(linea8["v2_" + i]);
                    total3 = parseInt(total3) + parseInt(linea8["v3_" + i]);
                    total4 = parseInt(total4) + parseInt(linea8["v4_" + i]);
                    total5 = parseInt(total5) + parseInt(linea8["v5_" + i]);

                }
                //totalizamos
                $scope.totalLinea8_1 = total1;
                $scope.totalLinea8_2 = total2;
                $scope.totalLinea8_3 = total3;
                $scope.totalLinea8_4 = total4;
                $scope.totalLinea8_5 = total5;




                //***************************************************************

                //************cargamos la linea 10*************************************
                var linea10 = datos["lineas"]["linea10"];
                var total1 = 0;
                var total2 = 0;
                var total3 = 0;
                var total4 = 0;
                var total5 = 0;
                var total6 = 0;
                for (var i = 0; i < linea10["cantidad_lineas"]; i++) {
                    if (linea10["v1_" + i] > 0) {
                        $scope.linea10.push({ id: linea10["id" + i], sociedad: linea10["sociedad_" + i], v1: linea10["v1_" + i],v2:0,v3:0,v4:0,v5:0,v6:0 });
                        total1 = parseInt(total1) + parseInt(linea10["v1_" + i]);
                    }
                    if (linea10["v2_" + i] > 0) {
                        $scope.linea10.push({ id: linea10["id" + i], sociedad: linea10["sociedad_" + i], v1: 0, v2: linea10["v2_" + i], v3: 0, v4: 0, v5: 0, v6: 0 });
                        total2 = parseInt(total2) + parseInt(linea10["v2_" + i]);
                    }
                    if (linea10["v4_" + i] > 0) {
                        $scope.linea10.push({ id: linea10["id" + i], sociedad: linea10["sociedad_" + i], v1: 0, v3: 0, v4: linea10["v4_" + i], v2: 0, v5: 0, v6: 0 });
                        total4 = parseInt(total4) + parseInt(linea10["v4_" + i]);
                    }
                    //console.log($scope.linea10);
                }
               
                //totalizamos
                $scope.totalLinea10_1 = total1;
                $scope.totalLinea10_2 = total2;
                $scope.totalLinea10_3 = total3;
                $scope.totalLinea10_4 = total4;
                $scope.totalLinea10_5 = total5;
                $scope.totalLinea10_6 = total6;


                //console.log($scope.linea10);

                //***************************************************************

            });



    function calcular_linea1() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        var total1 = 0;
        var total2 = 0;
        var total3 = 0;
        var total4 = 0;
        var total5 = 0;
        var total6 = 0;
        var total7 = 0;
        var total8 = 0;
        var total9 = 0;
        var total10 = 0;

        for (var i = 0; i < $scope.linea1.length ; i++) {
            total1 = parseInt($scope.linea1[i]["v1"]) + parseInt(total1);
            total2 = parseInt($scope.linea1[i]["v2"]) + parseInt(total2);
            total3 = parseInt($scope.linea1[i]["v3"]) + parseInt(total3);
            total4 = parseInt($scope.linea1[i]["v4"]) + parseInt(total4);
            total5 = parseInt($scope.linea1[i]["v5"]) + parseInt(total5);
            total7 = parseInt($scope.linea1[i]["v7"]) + parseInt(total7);
            total8 = parseInt($scope.linea1[i]["v8"]) + parseInt(total8);
            total9 = parseInt($scope.linea1[i]["v9"]) + parseInt(total9);
            total10 = parseInt($scope.linea1[i]["v10"]) + parseInt(total10);


        }

        //mostramos totales a usuario
        $scope.totalLinea1 = total1;
        $scope.totalLinea2 = total2;
        $scope.totalLinea3 = total3;
        $scope.totalLinea4 = total4;
        $scope.totalLinea5 = total5;
        $scope.totalLinea7 = total7;
        $scope.totalLinea8 = total8;
        $scope.totalLinea9 = total9;
        $scope.totalLinea10 = total10;


        //calculamos y guardamos codigos

        //calculamos el cod 600
                var total600 = 0;
                if ($scope.nuevalinea1.v11 == "no") {
                   for (var i = 0; i < $scope.linea1.length ; i++) {
                       if ($scope.linea1[i]["v11"] == "no") {
                           total600 = parseInt($scope.linea1[i]["v4"]) + parseInt($scope.linea1[i]["v5"]) + total600;
                        }
                   }
                   
                   $scope.c600 = total600;
                   //guardamos cod 600
                   save_codigo(total600, 600, id_contri, id_user, a_trib, 1);
                 }

                //calculamos el cod 847
                var total847 = 0;
                if ($scope.nuevalinea1.v11 == "si") {
                    for (var i = 0; i < $scope.linea1.length ; i++) {
                        if ($scope.linea1[i]["v11"] == "si") {
                           total847 = parseInt($scope.linea1[i]["v4"]) + parseInt($scope.linea1[i]["v5"]) + total847;
                        }
                    }
                    
                    $scope.c847 = total847;
                    //guardamos cod 847
                    save_codigo(total847, 847, id_contri, id_user, a_trib, 1);
                }

                //calculamos el cod 104
                var total104 = 0;
                for (var i = 0; i < $scope.linea1.length ; i++) {
                    total104 = parseInt($scope.linea1[i]["v1"]) + total104;
                }
                $scope.c104 = total104;
                //guardamos cod 847
                save_codigo(total104, 104, id_contri, id_user, a_trib, 1);
                

    }



    function calcular_linea2() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        var total1 = 0;
        var total2 = 0;
        var total3 = 0;
        var total4 = 0;
        var total5 = 0;
        var total6 = 0;
        var total7 = 0;
        var total8 = 0;
        var total9 = 0;

        for (var i = 0; i < $scope.linea2.length ; i++) {
            total1 = parseInt($scope.linea2[i]["v1"]) + parseInt(total1);
            total2 = parseInt($scope.linea2[i]["v2"]) + parseInt(total2);
            total3 = parseInt($scope.linea2[i]["v3"]) + parseInt(total3);
            total4 = parseInt($scope.linea2[i]["v4"]) + parseInt(total4);
            total5 = parseInt($scope.linea2[i]["v5"]) + parseInt(total5);
            total6 = parseInt($scope.linea2[i]["v6"]) + parseInt(total6);
            total7 = parseInt($scope.linea2[i]["v7"]) + parseInt(total7);
            total8 = parseInt($scope.linea2[i]["v8"]) + parseInt(total8);
            total9 = parseInt($scope.linea2[i]["v9"]) + parseInt(total9);


        }

        $scope.totalLinea2_1 = total1;
        $scope.totalLinea2_2 = total2;
        $scope.totalLinea2_3 = total3;
        $scope.totalLinea2_4 = total4;
        $scope.totalLinea2_5 = total5;
        $scope.totalLinea2_6 = total6;
        $scope.totalLinea2_7 = total7;
        $scope.totalLinea2_8 = total8;
        $scope.totalLinea2_9 = total9;
        

        $scope.c105 = total1;
        $scope.c601 = total4 + total5;
        //guardamos cod 601
        save_codigo(total4 + total5, 601, id_contri, id_user, a_trib, 1);
        //guardamos cod 105
        save_codigo(total1, 105, id_contri, id_user, a_trib, 1);
    }

    
    function calcular_linea4() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        var total1 = 0;
        var total2 = 0;
        var total3 = 0;
        
        for (var i = 0; i < $scope.linea4.length ; i++) {
            total1 = parseInt($scope.linea4[i]["v1"]) + parseInt(total1);
            total2 = parseInt($scope.linea4[i]["v2"]) + parseInt(total2);
            total3 = parseInt($scope.linea4[i]["v3"]) + parseInt(total3);
            
            
        }

        $scope.totalLinea4_1 = total1;
        $scope.totalLinea4_2 = total2;
        $scope.totalLinea4_3 = total3;
       
        $scope.c603 = total2;
        $scope.c108 = total1;
        //guardamos cod 603
        save_codigo(total2, 603, id_contri, id_user, a_trib, 1);
        //guardamos cod 108
        save_codigo(total1, 108, id_contri, id_user, a_trib, 1);
    }


    function save_nueva_linea8() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        $http.post("contribuyente.aspx/save_nueva_linea8", {
            id_contri: id_contri, id_user: id_user, a_trib: a_trib, sociedad: $scope.nuevalinea8.sociedad, v1: $scope.nuevalinea8.v1, v2: $scope.nuevalinea8.v2, v3: $scope.nuevalinea8.v3, v4: $scope.nuevalinea8.v4, v5: $scope.nuevalinea8.v5
        })
          .success(function (data) {
              calcular_linea8();
        });
    }


    function save_nueva_linea4() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        $http.post("contribuyente.aspx/save_nueva_linea4", {
            id_contri: id_contri, id_user: id_user, a_trib: a_trib, sociedad: $scope.nuevalinea4.sociedad, v1: $scope.nuevalinea4.v1, v2: $scope.nuevalinea4.v2, v3: $scope.nuevalinea4.v3, v4: $scope.nuevalinea4.v4
        })
        .success(function (data) {
            calcular_linea4();
        });
    }

    function save_nueva_linea2(trasladar) {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        $http.post("contribuyente.aspx/save_nueva_linea2", {
            id_contri: id_contri, id_user: id_user, a_trib: a_trib, sociedad: $scope.nuevalinea2.sociedad, v1: $scope.nuevalinea2.v1, v2: $scope.nuevalinea2.v2, v3: $scope.nuevalinea2.v3, v4: $scope.nuevalinea2.v4, v5: $scope.nuevalinea2.v5, v6: $scope.nuevalinea2.v6, v7: $scope.nuevalinea2.v7, v8: $scope.nuevalinea2.v8, v9: $scope.nuevalinea2.v9,trasladar:trasladar
        })
        .success(function (data) {
            calcular_linea2();
        });
    }


    function save_nueva_linea1(sociedad,v1,v2,v3,v4,v5,v7,v8,v9,v10,v11,linea) {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        $('#fade').fadeIn();
        $('#light').fadeIn();
        $http.post("contribuyente.aspx/save_nueva_linea1", {
            id_contri: id_contri, id_user: id_user, a_trib: a_trib, sociedad: sociedad, v1: v1, v2: v2, v3: v3, v4: v4, v5: v5,  v7: v7, v8: v8, v9: v9, v10: v10, v11: v11,linea: linea
        })
        .success(function (data) {
            var id_nva_linea = data.d;
             $scope.linea1.push({id:id_nva_linea, sociedad: sociedad, v1: v1, v2: v2, v3: v3, v4: v4, v5: v5, v7: v7, v8: v8, v9: v9, v10: v10, v11: v11 });
             calcular_linea1();
             
            if (linea == 8) {
                $scope.linea8.push({ id: id_nva_linea, sociedad: sociedad, v1: v2, v2: v3,v3: v7,v4: v8,v5: v10 });
               
                calcular_linea8();
            }
            //limpiamos los valores de nueva linea 1
            $scope.nuevalinea1 = {};

            swal("Línea Ingresada Exitosamente", "", "success");

            $('#fade').fadeOut();
            $('#light').fadeOut();
        });
    }





  

    //funcion que guarda valor de un codigo
    function save_codigo(valor,  codigo,  id_contri,  id_user,  a_trib,  anverso_reverso) {
        // console.log(id_user+" "+ id_contri +" "+ valor + " "+  total2 +" "+ signo +" "+ anverso_reverso +" "+ codigo);
        $http.post("contribuyente.aspx/save_codigo", {
            valor: valor, codigo: codigo, id_contri: id_contri, id_user: id_user, a_trib: a_trib, anverso_reverso: anverso_reverso
        })
        .success(function (data) {
            console.log(data.d);
        });
    }

   



    function calcular_linea8() {
        var id_user = $('#id_user').text();
        var a_trib = $('#a_trib').text();
        var id_contri = $('#id_contri').text();
        var total1 = 0;
        var total2 = 0;
        var total3 = 0;
        var total4 = 0;
        var total5 = 0;
        for (var i = 0; i < $scope.linea8.length ; i++) {
            total1 = parseInt($scope.linea8[i]["v1"]) + parseInt(total1);
            total2 = parseInt($scope.linea8[i]["v2"]) + parseInt(total2);
            total3 = parseInt($scope.linea8[i]["v3"]) + parseInt(total3);
            total4 = parseInt($scope.linea8[i]["v4"]) + parseInt(total4);
            total5 = parseInt($scope.linea8[i]["v5"]) + parseInt(total5);
        }
        $scope.totalLinea8_1 = total1;
        $scope.totalLinea8_2 = total2;
        $scope.totalLinea8_3 = total3;
        $scope.totalLinea8_4 = total4;
        $scope.totalLinea8_5 = total5;
        $scope.c606 = total3 + total4;
        $scope.c152 = total1;
        //guardamos cod 606
        save_codigo(total3 + total4, 606, id_contri, id_user, a_trib, 1);
        //guardamos cod 152
        save_codigo(total1, 152, id_contri, id_user, a_trib, 1);
    }

   


    //funcion que agrega una nueva linea 2
    $scope.agregarlinea2 = function () {
        $('#fade').fadeIn();
        $('#light').fadeIn();
       
            
            if (($scope.nuevalinea2.v1 > 0) || ($scope.nuevalinea2.v2 > 0)) {
                $scope.linea2.push($scope.nuevalinea2);

                //trasladar a línea 8
                if (($scope.nuevalinea2.v2 > 0)) {
                    $scope.linea8.push({ sociedad: $scope.nuevalinea2.sociedad, v1: $scope.nuevalinea2.v2, v2: $scope.nuevalinea2.v3, v3: $scope.nuevalinea2.v6, v4: $scope.nuevalinea2.v7, v5: 0 });
                    save_nueva_linea2(8);
                    calcular_linea8();
                }
                else {
                    save_nueva_linea2(2);
                }
                $scope.nuevalinea2 = {};
            }
            else {
                alert('No está ingresando rentas que se declaran en esta línea');
            }
        
        
        $('#fade').fadeOut();
        $('#light').fadeOut();
        
        
    }



    //funcion que agrega una nueva linea 4
    $scope.agregarlinea4 = function () {
        $('#fade').fadeIn();
        $('#light').fadeIn();
        $scope.linea4.push($scope.nuevalinea4);
       
        save_nueva_linea4();
        $scope.nuevalinea4 = {};
        $('#fade').fadeOut();
        $('#light').fadeOut();
    }

    //funcion que agrega nueva linea 8
    $scope.agregarlinea8 = function () {
        $('#fade').fadeIn();
        $('#light').fadeIn();
        $scope.linea8.push($scope.nuevalinea8);
        
        save_nueva_linea8();
        $scope.nuevalinea8 = {};
        $('#fade').fadeOut();
        $('#light').fadeOut();
    }


    $scope.abrirlinea = function (linea) {
       alert(linea.sociedad);
    }




    //**************agregar nueva linea 1*****************************************************************

    $scope.agregarlinea1 = function () {
        
        var nvalinea1 = $scope.nuevalinea1;
        if (nvalinea1 != undefined) {
            

            //----------guardamos informacion en variables------------------------------
            var sociedad = $scope.nuevalinea1.sociedad;
            if (sociedad == undefined) {
                sociedad = "";
            }
            var v1 = $scope.nuevalinea1.v1;
            if (v1 == undefined) {
                v1 = 0;
            }
            var v2 = $scope.nuevalinea1.v2;
            if (v2 == undefined) {
                v2 = 0;
            }
            var v3 = $scope.nuevalinea1.v3;
            if (v3 == undefined) {
                v3 = 0;
            }
            var v4 = $scope.nuevalinea1.v4;
            if (v4 == undefined) {
                v4 = 0;
            }
            var v5 = $scope.nuevalinea1.v5;
            if (v5 == undefined) {
                v5 = 0;
            }
            var v7 = $scope.nuevalinea1.v7;
            if (v7 == undefined) {
                v7 = 0;
            }
            var v8 = $scope.nuevalinea1.v8;
            if (v8 == undefined) {
                v8 = 0;
            }
            var v9 = $scope.nuevalinea1.v9;
            if (v9 == undefined) {
                v9 = 0;
            }
            var v10 = $scope.nuevalinea1.v10;
            if (v10 == undefined) {
                v10 = 0;
            }
            var v11 = $scope.nuevalinea1.v11;
            if (v11 == undefined) {
                v11= "";
            }

            //---------------------------------------------------------------------

            //validamos que se ingreso nombre de sociedad
            if (sociedad != "") {
                //validamos que exista monto afecto o exento
                if (((v1 > 0) || (v2 > 0))) {
                    //si solo ingreso monto exento
                    if ((v2 > 0) && (v1 == 0)) {
                        if (v4 == 0 && v5 == 0 && v9 == 0 ) {
                            save_nueva_linea1(sociedad, v1, v2, v3, v4, v5, v7, v8, v9, v10, v11, 8)
                            //console.log('va para linea 8');
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                        else {
                            sweetAlert("Error", "Debe verificar montos ingresados", "error");
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                    }
                    //si se ingreso afecto y exento
                    if ((v2 > 0) && (v1 > 0)) {
                        if ( (v9 == 0)  && (v11 != "")) {
                            save_nueva_linea1(sociedad, v1, v2, v3, v4, v5, v7, v8, v9, v10, v11, 8)
                            //console.log('va para linea 8');
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                        else {
                            sweetAlert("Error", "Debe verificar montos ingresados", "error");
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                    }
                    //si solo se ingreso monto afecto
                    if ((v1 > 0) && (v2 == 0)) {
                        if ( (v7 == 0) && (v8 == 0) && (v9 == 0) && (v10 == 0) && (v11 != "") ) {
                            save_nueva_linea1(sociedad, v1, v2, v3, v4, v5, v7, v8, v9, v10, v11, 1)
                            //console.log('va para la linea 1');
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                        else {
                            sweetAlert("Error", "Debe verificar montos ingresados", "error");
                            //$('#fade').fadeOut();
                            //$('#light').fadeOut();
                        }
                    }

                }
                else {
                    sweetAlert("Error", "No ha ingresado Monto Afecto o Monto Exento, debe ingresar al menos uno.", "error");
                    //$('#fade').fadeOut();
                    //$('#light').fadeOut();
                }
            }
            else {
                sweetAlert("Error", "Debe ingresar nombre de sociedad.", "error");
                //$('#fade').fadeOut();
                //$('#light').fadeOut();
            }
            
            
           
        }

        else {
            sweetAlert("Error", "Debe ingresar información.", "error");
        }
        
    }


    //****************************************************************************************************




});
