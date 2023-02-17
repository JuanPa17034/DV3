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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/bee51370cb.js" crossorigin="anonymous"></script>
        
        <link href="css/tablas.css" rel="stylesheet" type="text/css"/>
        <link rel="website icon" type="png" href="img/logo.png">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link href="css/newcssDiego.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div>
                <img class="logo" src="imgIndex/pruebaI.png" alt="logo isis">
                <h1 id="bienvenida"><a href="pagClient.jsp"> Inicio </a></h1>
                <h1 id="bienvenida"> Pedidos </h1>
            </div>
            <nav>
                <a href="Controlador?accion=cerrarsesion">
                    <i class="fas fa-sign-out-alt"></i>  <!--icono salir-->
                </a>
            </nav>
        </header>
    <center>
        <div id="historial"> <span id="reservar"> Historial de Pedidos </span><br><br>
            <table border="1" class="content-table">
                <input type="hidden" disabled="" id="jspeR" value="${msg}">
                <thead>
                    <tr>
                        <th>N°Pedido</th>
                        <th>Fecha Pedido</th>
                        <th>Hora Pedido</th>
                        <th>Productos</th>
                        <th>Persona Recoge</th>
                        <th>Total</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${listaPedidos}">
                        <tr>
                            <td>${p.getId_pedido()}</td>
                            <td>${p.getFecha_recogida()}</td>
                            <td>${p.getHora_recogida()}</td>
                            <td>
                                <form action="Controlador">
                                    <input type="hidden" name="idpedidoss" value="${p.getId_pedido()}"/>
                                    <button type="submit" class="btn-danger" name="accion" value="verDetalle"><i class="fa fa-exclamation" aria-hidden="true"> Ver productos</i></button><br><br>
                                </form>
                            </td>
                            <td>${p.getNombre_recoge()}</td>
                            <td>${p.getTotal()}</td>
                            <c:if test="${p.getEstado()==1}">
                                <td>En espera</td>
                            </c:if>
                            <c:if test="${p.getEstado()==2}">
                                <td>Confirmado</td>
                            </c:if>
                            <c:if test="${p.getEstado()==3}">
                                <td>Rechazado</td>
                            </c:if>
                            <c:if test="${p.getEstado()==1}">
                                <td>
                                    <form action="Controlador">
                                        <input type="hidden" name="idpedidos" value="${p.getId_pedido()}"/>
                                        <button type="submit" class="btn-danger" name="accion" value="eliminarPedido">&#x2716 Cancelar</button><br><br>
                                        <button type="submit" class="btn-secondary" name="accion" value="pagEditarPdo">&#x2710 Editar</button>
                                    </form>
                                </td>
                            </c:if>
                            <c:if test="${p.getEstado()==2}">
                                <td> Sin acciones</td>
                            </c:if>   
                            <c:if test="${p.getEstado()==3}">
                                <td> Sin acciones</td>
                            </c:if>   
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </center>
    <script>
        const pedRe = document.getElementById("jspeR").value;
        if (pedRe === "verDee") {
            swal({
                title: "Detalle Productos",
                text: "<%=request.getAttribute("pedidos")%>",
                icon: "success",
                button: "Continuar"
            });
        } else {
            if (pedRe === "editSucces") {
                swal({
                    title: "Perfecto",
                    text: "Tu pedido se ha editado con exito",
                    icon: "success",
                    button: "Continuar"
                });
            } else {
                if (pedRe === "RegistroSuccess") {
                    swal({
                        title: "Perfecto",
                        text: "Tu pedido se ha realizado, espere su confirmacion",
                        icon: "success",
                        button: "Continuar"
                    });
                }
            }
        }
    </script>
</body>
</html>