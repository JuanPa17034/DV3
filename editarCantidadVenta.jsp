<%-- 
    Document   : editarCantidadVenta
    Created on : 3/11/2022, 11:38:14 AM
    Author     : Santiago Torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body{
            background-color: rgba(255,255,255,1);
        }
    </style>
    <body>
        <form action="Controlador" method="GET">
            <input type="hidden" id="codif" name="nameCodif" value ="${codigoEED}" />
            <input type="hidden" id="ensayoCantidad" name="nuevoValor" value =""  />
        </form>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/fun.js">
        </script>
    </body>
</html>