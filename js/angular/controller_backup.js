
//ponemos en variable el modulo
var app = angular.module("app1", ["LocalStorageModule"]);

//declaramos un controlador y ejecutamos una funcion
app.controller("controlador", function ($scope, localStorageService) {


    //inicializamos todo en 0
    $scope.linea1 = [];
    $scope.total1 = 0;
    $scope.total2 = 0;
    $scope.total3 = 0;
    $scope.total4 = 0;
    $scope.total5 = 0;
    $scope.total6 = 0;
    $scope.total7 = 0;
    $scope.total8 = 0;
    $scope.total9 = 0;
    $scope.total10 = 0;
    //

    //comprobamos si hay datos guardados en local storage
    if (localStorageService.get("linea1")) {
        $scope.linea1 = localStorageService.get("linea1");
        
       

        var resultado = [];
        valores = localStorageService.get("linea1");
       // console.log(resultado[2]["sociedad"]);
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
        //totalizamos linea 1
        for (var i = 0; i < valores.length ; i++) {
            total1 = valores[i]["v1"] + total1;
            total2 = valores[i]["v2"] + total2;
            total3 = valores[i]["v3"] + total3;
            total4 = valores[i]["v4"] + total4;
            total5 = valores[i]["v5"] + total5;
            total6 = valores[i]["v6"] + total6;
            total7 = valores[i]["v7"] + total7;
            total8 = valores[i]["v8"] + total8;
            total9 = valores[i]["v9"] + total9;
            total10 = valores[i]["v10"] + total10;
        }
        $scope.total1 = total1;
        $scope.total2 = total2;
        $scope.total3 = total3;
        $scope.total4 = total4;
        $scope.total5 = total5;
        $scope.total6 = total6;
        $scope.total7 = total7;
        $scope.total8 = total8;
        $scope.total9 = total9;
        $scope.total10 = total10;
        //console.log(total1);

    }
    else {
        $scope.linea1 = [];
        $scope.total1 = 0;
        $scope.total2 = 0;
        $scope.total3 = 0;
        $scope.total4 = 0;
        $scope.total5 = 0;
        $scope.total6 = 0;
        $scope.total7 = 0;
        $scope.total8 = 0;
        $scope.total9 = 0;
        $scope.total10 = 0;
    }



    //funcion que agrega 1 linea nueva
    $scope.agregarlinea1 = function () {

        //validamos datos != null
        if ($scope.nuevalinea1.v1 != null && $scope.nuevalinea1.sociedad != null && $scope.nuevalinea1.v2 != null && $scope.nuevalinea1.v3 != null && $scope.nuevalinea1.v4 != null && $scope.nuevalinea1.v5 != null && $scope.nuevalinea1.v6 != null && $scope.nuevalinea1.v7 != null && $scope.nuevalinea1.v8 != null && $scope.nuevalinea1.v9 != null && $scope.nuevalinea1.v10 != null && $scope.nuevalinea1.v11 != null) {
            //pasamos los datos de la linea al arreglo
            $scope.linea1.push($scope.nuevalinea1);
            //totalisamos y actualizamos datos a la vista del user
            $scope.total1 = $scope.nuevalinea1.v1 + $scope.total1;
            $scope.total2 = $scope.nuevalinea1.v2 + $scope.total2;
            $scope.total3 = $scope.nuevalinea1.v3 + $scope.total3;
            $scope.total4 = $scope.nuevalinea1.v4 + $scope.total4;
            $scope.total5 = $scope.nuevalinea1.v5 + $scope.total5;
            $scope.total6 = $scope.nuevalinea1.v6 + $scope.total6;
            $scope.total7 = $scope.nuevalinea1.v7 + $scope.total7;
            $scope.total8 = $scope.nuevalinea1.v8 + $scope.total8;
            $scope.total9 = $scope.nuevalinea1.v9 + $scope.total9;
            $scope.total10 = $scope.nuevalinea1.v10 + $scope.total10;


            //limpiamos datos nueva linea
            $scope.nuevalinea1 = {};
            //guardamos los datos en local storage
           localStorageService.set("linea1", $scope.linea1);
            

        }
        else {
            alert("Debe completar todos los datos requeridos");
        }

    }

});
