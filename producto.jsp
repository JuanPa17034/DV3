<%-- 
    
    Created on : 8/10/2022, 11:54:57 AM
    Author     : Santiago Torres
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRODUCTO</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link href="css/productoE.css" rel="stylesheet" type="text/css"/>
        <!-- custom js file link  -->

    </head>
    <body>
        <div class="container">

            <h3 class="title"> Productos </h3>

            <div class="products-container">

                <c:forEach var="p" items="${listaProductos}">
                    <div class="product" data-name="${p.getCodigo()}">
                        <img src="img/${p.getUrlFoto()}" alt="">
                        <h3>${p.getNombre()}</h3>
                        <div class="price">$${p.getPrecio_venta()}</div>
                    </div>

                </c:forEach>





            </div>

        </div>

        <div class="products-preview">
            <c:forEach var="p" items="${listaProductos}">
                <div class="preview" data-target="${p.getCodigo()}">
                    <i class="fas fa-times"></i>
                    <img src="img/${p.getUrlFoto()}" alt="">
                    <h3>${p.getNombre()}</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                        <span>( 250 )</span>
                    </div>
                    <p>${p.getDescripcion()}</p>
                    <div class="price">$ ${p.getPrecio_venta()}</div>
                    <div class="price">CODIGO ${p.getCodigo()}</div>
                </div>        
            </c:forEach>
        </div>
        <script src="js/pruductoF.js" type="text/javascript"></script>
    </body>
</html>
