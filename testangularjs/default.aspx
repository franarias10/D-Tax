<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html  ng-app="app1">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.2/angular.min.js"></script>
    <script src="js/controller.js"></script>
</head>
<body >
    <form id="form1" runat="server">
    <div ng-controller="controlador1" >
        <input type="text" ng-model="nombre" />
        {{"hola "+ nombre }}
    </div>
    </form>
</body>
</html>
