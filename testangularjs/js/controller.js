
//ponemos en variable el modulo
var app = angular.module("app1", []);

//declaramos un controlador y ejecutamos una funcion
app.controller("controlador1", function ($scope) {

    var numero = 1 + 3;
    $scope.nombre = numero;

});
