<%-- 
    Document   : ventaSolicitada
    Created on : 8/10/2022, 11:55:19 AM
    Author     : Santiago Torres
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Pedido"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="website icon" type="png" href="img/logo.png">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style>
            *{
                box-sizing: border-box;
            }
            h1{
                font-size: 1.9rem;
                color:#0000FF;
                margin-bottom: 3rem;
                text-transform: uppercase;
                text-align: center;
            }
            .compraSol{
                width: 90%;
                margin:auto;
                background-color: #F5F1F1;
                height: 290px;
                padding: 15px;
                overflow: hidden;
                margin-bottom: 3%;
            }
            .general{
                width: 100%;
                overflow: hidden;
            }
            .parteUno, .parteDos{
                width: 50%;
                float: left;

            }
            label{
                display: flex;
                justify-content: space-between;
                font-weight: 700;
                margin: auto;
                line-height: 37px;
            }
            .parteUno input{
                width: 80%;
                padding: 7px;
                outline: none;
                font-size: 15px;
                font-family: cursive;
                margin-bottom: 10px;
                border: 2px solid rgb(27, 148, 228);
            }
            .tituloSecu{
                text-align: center;
                text-transform: uppercase;
                text-align: center;
            }
            .botones{
                display: flex;
                justify-content: space-around;
            }
            .botones input{
                width: 30%;
                padding: 1.4%;
                color: white;
                font-weight: 700;
                border: none;
            }
            .aceptar{
                background-color: #9AE936;

            }
            .rechazar{
                background-color: #FF0000;

            }
            .parteDos{
                margin: auto;
            }
            .tabl{
                width: 85%;
                margin: auto;
                background-color: white;
                height: 140px;
                overflow-y: scroll;
            }
            @media screen and (max-width:767px){
                .compraSol{
                    height: 480px;
                }
                .parteUno, .parteDos{
                    width: 100%;
                    float: left;
                }
                .parteUno input{
                    width: 60%;
                    padding: 5px;
                    font-size: 13px;
                }
                .tabl{
                    width: 97%;
                }
                .tituloSecu{
                    font-size: 15px;
                }
            }
        </style>
    </head>
    <body>
        <br>
        <h1>COMPRAS SOLICITADAS</h1>
        <div class="contenedor">
            <input type="hidden" disabled="" id="jsVenta" value="${msg}">
            <c:forEach var="pT" items="${listaPedidos}">
                <div class="compraSol">
                    <div  class="general">
                        <div class="parteUno">
                            <label>
                                N° pedido
                                <input type="text" value="${pT.getId_pedido()}" readonly name="Id_pedido">
                            </label>
                            <c:forEach var="nC" items="${listaClientes}">
                                <c:if test="${pT.getId_cliente()==nC.getId_cliente()}">
                                    <label>
                                        Nombre
                                        <input type="text" value="${nC.getNombre()}" readonly>
                                    </label>
                                </c:if>
                            </c:forEach>
                            <label>
                                Fecha
                                <input type="date" value="${pT.getFecha_recogida()}" readonly>
                            </label>
                            <br>
                        </div>
                        <div class="parteDos">
                            <h3 class="tituloSecu">Productos</h3>
                            <br>
                            <div class="tabl">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Producto</th>
                                            <th>Cantidad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="p" items="${listaProductos}">
                                            <c:if test="${pT.getId_pedido()==p.getId_producto()}">
                                                <tr>
                                                    <td>${p.getNombre()}</td>
                                                    <td>${p.getStock()}</td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                        <tr>
                                            <td>Total</td>
                                            <td>${pT.getTotal()}</td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            <br>
                            <form action="Controlador" method="POST">
                                <div class="botones">
                                    <input type="hidden" value="${pT.getId_pedido()}" readonly name="Id_pedidoEmail">
                                    <input type="submit" value="Aceptar" class="aceptar" name=accion>
                                    <input type="submit" value="Rechazar" class="rechazar" name=accion>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>    
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            const venta = document.getElementById("jsVenta").value;
            if (venta === "ventAcept") {
                swal({
                    title: "Perfecto",
                    text: "la venta ha sido aceptada",
                    icon: "success",
                    button: "Continuar"
                });
            } else {
                if (venta === "deleteVenta") {
                    swal({
                        title: "Estas Seguro de rechazar esta venta ? ",
                        text: "¡ No podras recuperar esta acción !",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true
                    })
                            .then((willDelete) => {
                                if (willDelete) {
                                    window.location.replace("Controlador?accion=deleteVenta");
                                } else {
                                    window.location.replace("Controlador?accion=VentaSol");
                                }
                            });
                }

            }
        </script>
    </body>
</html>
