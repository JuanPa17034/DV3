<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    if (session.getAttribute("perfil") != null) {

%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modulo Cliente - SB Admin</title>
        <link href="css/principal.css" rel="stylesheet" />
        <link href="css/tablas.css" rel="stylesheet" type="text/css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="website icon" type="png" href="img/logo.png">
    </head>
    <body>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Controlador?accion=iniciar">Isis Bakery</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">

            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li class="dropdown-item">${nombre}</li>
                        <li class="dropdown-item">${correo}</li>
                        <li><hr class="dropdown-divider"/></li>
                        <form action="Controlador" method="POST">
                            <center>
                                <button type="submit" class="btn-danger" name="accion" value="cerrarsesion">Cerrar Sesión</button>
                            </center>
                        </form>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="Controlador?accion=iniciar">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Panel Administrativo
                            </a>
                            <div class="sb-sidenav-menu-heading">Menú</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Registros
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                 <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Controlador?accion=listarProductos">Productos</a>
                                    <a class="nav-link" href="Controlador?accion=listarClientes">Clientes</a>
                                    <a class="nav-link" href="Controlador?accion=listarVendedores">Vendedores</a>
                                    <a class="nav-link" href="Controlador?accion=listarVentas">Ventas</a>
                                </nav>
                            </div>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Reportes</div>
                            <a class="nav-link" href="reportVentas.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Ventas
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Conectado como:</div>
                        ${perfil}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Panel de Clientes</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="Controlador?accion=iniciar">Regresar</a></li>
                            <li class="breadcrumb-item active">Panel de Clientes</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <input type="hidden" disabled="" id="NombreCl" value="${NombreCl}">
                                <input type="hidden" disabled="" id="jsCliente" value="${msg}">
                                <p class="mb-0">
                                    <%                                                if (request.getAttribute("Button") == "actButton") {


                                    %>
                                <form action="Controlador" method="POST">
                                    <div class="search-box">
                                        <div class="search">
                                            <input class="searchPalabra" value="${buscar}" type="text" name="txtBuscarC" placeholder="Buscar">
                                            <button class="searchButton" name="accion" value="regresarBusquedaC" type="submit" class="searchButton"><i class="fa fa-window-close" aria-hidden="true"></i></button>
                                        </div>
                                    </div>
                                </form> 
                                <%                                                } else {


                                %>
                                <form action="Controlador" method="POST">
                                    <div class="search-box">
                                        <div class="search">
                                            <input class="searchPalabra" value="${buscar}" type="text" name="txtBuscarC" placeholder="Buscar" required >
                                            <button class="searchButton" name="accion" value="buscarCliente" type="submit" class="searchButton"><i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                                <%                                    }
                                %>
                                <table class="content-table" border="2">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Cedula</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Celular</th>
                                            <th>Correo</th>
                                            <th>Direccion</th>
                                            <th>Contraseña</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="c" items="${listaClientes}">
                                            <tr>
                                                <td>${c.getId_cliente()}</td>
                                                <td>${c.getCedula()}</td>
                                                <td>${c.getNombre()}</td>
                                                <td>${c.getApellido()}</td>
                                                <td>${c.getCelular()}</td>
                                                <td>${c.getCorreo()}</td>
                                                <td>${c.getDireccion()}</td>
                                                <td>${c.getContrasena()}</td>
                                                <td>
                                                    <form action="Controlador">
                                                        <input type="hidden" id="idcliente" name="idcliente" value="${c.getId_cliente()}"/>
                                                        <button type="submit" class="btn-danger" name="accion" value="eliminarCl">&#x2716 Eliminar</button>
                                                        <button type="submit" class="btn-secondary" name="accion" value="pagEditarC">&#x2710 Editar</button>
                                                    </form> 
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table><br>
                                <a type="submit" class="nva-pag" href="registroCliente.jsp">&#x271a Añadir Cliente</a>
                                </p>
                            </div>
                        </div>
                        <div style="height: 90vh"></div> 
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Isis Bakey Website 2022</div>                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script>
            const cliente = document.getElementById("jsCliente").value;
            console.log(cliente);
            if (cliente === "editSuccess") {
                swal({
                    title: "Perfecto",
                    text: "Cliente editado con exito",
                    icon: "success",
                    button: "Continuar"
                });
            } else {
                if (cliente === "editFailed") {
                    swal({
                        title: "Ups....",
                        text: "Algo paso... Intentalo de nuevo",
                        icon: "error",
                        button: "Continuar"
                    });
                } else {
                    if (cliente === "eliminarCl") {
                        swal({
                            title: "Estas Seguro de eliminar a <%=request.getAttribute("NombreCl")%> ? ",
                            text: "Una vez eliminado, se perdera TODO lo relacionado con el usuario ¡ No podras recuperar esta acción !",
                            icon: "warning",
                            buttons: true,
                            dangerMode: true
                        })
                                .then((willDelete) => {
                                    if (willDelete) {
                                        window.location.replace("Controlador?accion=eliminarC");
                                    } else {
                                        window.location.replace("Controlador?accion=listarClientes");
                                    }
                                });
                    } else {
                        if (cliente === "RegisterSuccess") {
                            swal({
                                title: "Perfecto",
                                text: "Cliente registrado con exito",
                                icon: "success",
                                button: "Continuar"
                            });
                        } else {
                            if (cliente === "RegisterError") {
                                swal({
                                    title: "Ups....",
                                    text: "Algo paso... Intentalo de nuevo",
                                    icon: "error",
                                    button: "Continuar"
                                });
                            } else {
                                if (cliente === "busqFailed") {
                                    swal({
                                        title: "Ups....",
                                        text: "Algo paso... No encontramos al cliente",
                                        icon: "error",
                                        button: "Continuar"
                                    });
                                }
                            }
                        }
                    }
                }
            }
        </script>
        <script defer src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
<%    } else {
        out.println("<html><head></head><body onload=\"alert('NO TIENES ACCESO !! INICIO SESIÓN'); window.location='index.jsp' \"></body></html>");
        out.close();
    }
%>