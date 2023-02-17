<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
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
                <h1 id="bienvenida"><a href="pagClient.jsp"> Inicio </a></h1>
                <h1 id="bienvenida">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    ( ${carrito} )
                </h1>
            </div>
            <nav>
                <a href="Controlador?accion=cerrarsesion">
                    <i class="fas fa-sign-out-alt"></i>  <!--icono salir-->
                </a>
            </nav>
        </header>
        <c:forEach var="p" items="${listaProductos}">
            <c:if test="${p.getStock()!=0}">
                <div class="catalogo" id="r">
                    <form action="Controlador" method="POST">
                        <img Class="foto" src="img/${p.getUrlFoto()}" alt="img producto" height="200" width="200" />
                        <h2 class="nombre">${p.getNombre()}</h2>               
                        <p id="descripcion">${p.getDescripcion()}</p>
                        <p class="precio"> $ ${p.getPrecio_venta()}</p>
                        <input type="hidden" name="idPRod" value="${p.getId_producto()}"/>
                        <input type="hidden" name="fechaEntrega" value="${fechaEntrega}"/>
                        <input type="hidden" name="horaEntrega" value="${horaEntrega}"/>
                        <%
                            if (request.getAttribute("obs") != "observar") {
                        %>
                        <div class="div-agregar">
                            <input type="number" max="${p.getStock()}" name="cantProd" required="" >
                            <button type="submit" value="agregarCarrito" name="accion" class="btn-carro">Agregar al carrito</button>
                        </div>
                        <%
                            }
                        %>
                    </form>
                </div>
            </c:if>
        </c:forEach>
        <%
            if (request.getAttribute("obs") != "observar") {
        %>
        <form action="Controlador">
            <button type="submit" id="carrito" class="carri" name="accion" value="verCarrito">Ver carrito</button>
        </form>
        <%
        } else {
        %>
        <form action="Controlador">
        <button id="carrito" class="carri" name="accion" value="inicio">Me antoje de algo</button>
        </form>
        <%
            }
        %>
    </body>
</html>