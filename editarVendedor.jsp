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
        <title>Modulo vendedor - SB Admin</title>
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
        <link href="css/formReg.css" rel="stylesheet" type="text/css"/>
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
                                <button class="btn-danger" type="submit" name="accion" value="cerrarsesion">Cerrar Sesi�n</button>
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
                            <a class="nav-link" href="pagPrincipal.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Panel Administrativo
                            </a>
                            <div class="sb-sidenav-menu-heading">Men�</div>
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
                        <h1 class="mt-4">Panel de Vendedores</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="Controlador?accion=listarVendedores">Regresar</a></li>
                            <li class="breadcrumb-item active">Panel de vendedores</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                    <br>
                                <form class="form-reg" action="Controlador" method="POST">
                                    <h1 style="text-align: center">Editar un vendedor</h1>
                                    <br>
                                    <input type="number" placeholder="C�dula" name="txtCedulaEV" value="${v.getCedula()}" disabled="" required/><br><br>
                                    <input type="text" placeholder="Nombre" name="txtNombreEV" value="${v.getNombre()}" required/><br><br>
                                    <input type="Apellidos" placeholder="Apellidos" name="txtApellidoEV" value="${v.getApellido()}" required/><br><br>
                                    <input type="number" placeholder="Celular" name="txtCelularEV" value="${v.getCelular()}" required/><br><br>
                                    <input type="email" placeholder="Correo" name="txtCorreoEV" value="${v.getCorreo()}" required/><br><br>
                                    <input type="text" placeholder="Direccion" name="txtZona_AEV" value="${v.getZona_asignada()}" required/><br><br>
                                    <input type="text" placeholder="Color -> Pregunta de seguridad" name="txtColorEV" value="${v.getColor()}" required/><br><br>
                                    <input type="text" placeholder="Contrase�a" name="txtContraEV" value="${v.getContrasena()}" required/><br><br>
                                    <c:if test="${v.getEstado() == 'ACTIVO'}">
                                        <select class="select" name="estadoV">
                                            <option value="ACTIVO" selected >ACTIVO</option>
                                            <option class="alert-danger"value="DESACTIVO" >DESACTIVO</option>
                                        </select><br><br>
                                    </c:if>
                                    <c:if test="${v.getEstado() == 'DESACTIVO'}">
                                        <select class="select" name="estadoV">
                                            <option value="ACTIVO">ACTIVO</option>
                                            <option class="alert-danger" value="DESACTIVO" selected >DESACTIVO</option>
                                        </select><br><br>
                                    </c:if>
                                    <button class="nva-pag atras" name="accion" value="cancelarV" type="submit">Cancelar</button>
                                    <button class="nva-pag" name="accion" value="editarVendedor" type="submit">Confirmar</button>
                                </form>
                                <br>
                                </p>
                            </div>
                        </div>
                        <div style="height: 25vh"></div> 
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
<%    } else {
        out.println("<html><head></head><body onload=\"alert('NO TIENES ACCESO !! INICIO SESI�N'); window.location='index.jsp' \"></body></html>");
        out.close();
    }
%>