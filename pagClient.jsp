<%-- 
    Document   : pagClient
    Created on : 21/10/2022, 10:02:36 a. m.
    Author     : sarit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>cliente</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/bee51370cb.js" crossorigin="anonymous"></script>
        
        <link rel="website icon" type="png" href="img/logo.png">
        <link href="css/newcssDiego.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <img class="logo" src="imgIndex/pruebaI.png" alt="logo isis" >
                <h1 id="bienvenida">Bienvenido, ${nombre}
                    <input type="hidden" value="${idCliente}">
                </h1>
            </div>
            <nav>
                <a href="Controlador?accion=cerrarsesion">
                    <i class="fas fa-sign-out-alt"></i>  <!--icono salir-->
                </a>
            </nav>

        </header>
        <form action="Controlador" method="POST">
            <div id="formulario"> <span id="reservar">Reservar un pedido</span>
                <label class="formulario1"> En que fecha deseas recoger el pedido</label>
                <input type="date" name="txtFR" required/><br>
                <label class="formulario1">Para que hora deseas el pedido</label>
                <input type="time" name="txtHR" required/><br>
                <label class="formulario1">Seleccione los productos que desea </label>
                <button type="submit" name="accion" value="listarProductoCliente" id="seleccion"> Seleccionar productos </button>
            </div>
        </form>     
        <ul>
            <li><a href="Controlador?accion=listarPC">Productos</a>
            <li><a href="Controlador?accion=verPedidos">Pedidos</a>
            <li><a href="ayuda.html">Ayuda</a>
        </ul>
    </body>
</html>