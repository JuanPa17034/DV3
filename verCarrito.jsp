<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/bee51370cb.js" crossorigin="anonymous"></script>
        
        <link href="css/tablas.css" rel="stylesheet" type="text/css"/>
        <link rel="website icon" type="png" href="img/logo.png">
        <link href="css/newcssDiego.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <img class="logo" src="imgIndex/pruebaI.png" alt="logo isis" >
                <h1 id="bienvenida"><a href="Controlador?accion=listarProductoCliente">Seguir Comprando</a></h1>
            </div>
            <nav>
                <a href="Controlador?accion=cerrarsesion">
                    <i class="fas fa-sign-out-alt"></i>  <!--icono salir-->
                </a>
            </nav>
        </header>
        <br>
        <div class="container mt-4">
            <div class="row">
                <div class="col-sm-8">
                    <table class="content-table" border="5"">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRE</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>CANTIDAD</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${listaCarrito}">
                                <tr>
                                    <td>${c.getItem()}</td>
                                    <td>${c.getNombre()}</td>
                                    <td>$ ${c.getPrecioCompra()}</td>
                                    <td>${c.getCantidad()}</td>
                                    <td>$ ${c.getSubTotal()}</td>
                                    <td style="text-align: center">
                                        <form action="Controlador" method="POST">
                                            <input type="hidden" name="idI" value="${c.getItem()}"/>
                                            <button type="submit" class="btn-danger" name="accion" value="agregarCantidad">&#x2716 AGREGAR</button>
                                            <button type="submit" class="btn-secondary" name="accion" value="eliminarCantidad">&#x2710 ELIMINAR</button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <br>
    <center>
        <label>Total a Pagar: </label>
        <input style="color: black" type="text" readonly="" value="$ ${totalPagar}"><br>
    </center>
    <br>
    <form action="Controlador">
    <button id="carrito" class="carri" name="accion" value="confirmarProductos">Confirmar productos</button>
    </form>
</body>
</html>