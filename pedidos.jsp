<%-- 
    Document   : pedidos
    Created on : 28/10/2022, 12:03:41 p. m.
    Author     : sarit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>pedidos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"><script src="https://kit.fontawesome.com/bee51370cb.js" crossorigin="anonymous"></script>
        
        <link rel="website icon" type="png" href="img/logo.png">
        <link href="css/newcssDiego.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <img class="logo" src="imgIndex/pruebaI.png" alt="logo isis">
                <h1 id="bienvenida"><a href="pagClient.jsp"> Inicio </a></h1>
                <h1 id="bienvenida"> Pedido </h1>
            </div>
            <nav>
                <a href="Controlador?accion=cerrarsesion">
                    <i class="fas fa-sign-out-alt"></i>  <!--icono salir-->
                </a>
            </nav>
        </header>
        <form action="Controlador" method="POST">
            <div id="formularioF"> <span id="reservar">Datos de Facturación</span>
                <span class="encabezado numero">Numero Pedido: ${idPedido} </span>
                <label id="fechageneracion">Fecha de generación: ${fechaGen} </label>
                <label class="formulario1"> Nombre</label>
                <input name="txtPersonaR" type="text" placeholder="Nombre de la persona que recoge el pedido" required/><br>
                <label class="formulario1">Teléfono de contacto</label>
                <input name="txtTelCont" type="number" placeholder="Ingrese número de contacto" required/><br>
                <label class="formulario1">Valor total del Pedido </label>
                <label class="total"> ${totalPagar} </label><br>
                <button type="submit" name="accion" value="terminarPedido" id="seleccion"> Enviar pedido </button>
            </div>
        </form>
    </body>
</html>