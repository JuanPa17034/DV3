<%-- 
    Document   : indexVen
    Created on : 8/10/2022, 11:45:48 AM
    Author     : Santiago Torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendedor</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #d03b40; display: flex; justify-content: space-between">
            <a class="navbar-brand" href="#" style="color: white;font-weight: 800px">ISIS BAKERY</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li style="margin-right: 10px;"class="nav-item active">
                        <a class="btn btn-outline-light"  href="Controlador?accion=Producto" target="myFrame">PRODUCTOS <span class="sr-only">(current)</span></a>
                    </li>
                    <li style="margin-right: 10px;"class="nav-item active">
                        <a class="btn btn-outline-light"  href="Controlador?accion=ClientePagina" target="myFrame">CLIENTE <span class="sr-only">(current)</span></a>
                    </li>
                    <li style="margin-right: 10px;" class="nav-item">
                        <a class="btn btn-outline-light"  href="Controlador?accion=Venta"  target="myFrame">VENTAS</a>
                    </li>
                    <li style="margin-right: 10px;" class="nav-item">
                        <a class="btn btn-outline-light" href="Controlador?accion=VentaSol"  target="myFrame">VENTAS - SOLICITADAS</a>
                    </li>
                </ul>
                <div class="pruebaA" style="margin-left: auto">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${nombreC}
                        </button>
                        <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" >
                                <img src="imgCa/usuario.png" alt="" />
                            </a>
                            <a class="dropdown-item" >${nombre}</a>
                            <a class="dropdown-item">${correo}</a>
                            <a class="dropdown-item" ></a>
                            <a class="dropdown-item" href="Controlador?accion=cerrarsesion">Cerrar sesión</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 100vh;">
            <iframe name="myFrame" style="height: 100%; width: 100%"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>