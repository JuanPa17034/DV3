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
        <title>Modulo ventas - SB Admin</title>
        <link href="css/principal.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="website icon" type="png" href="img/logo.png">
        <style>
            body{
                font-family: Verdana, Geneva, Tahoma, sans-serif;

            }
            h2{

                text-align: center;
            }
            .content{
                width: 60%;
                margin: 0 auto;
            }
            canvas{
                max-width: 100%;
                margin-bottom: 3rem;
            }

            @media screen and (max-width: 767px) {
                .content{
                    width: 100%;
                }
                body{
                    height: 100vh;
                }
            }
            @media screen and (min-width: 767px) and (max-width: 1023px) {
                .content{
                    width: 100%;
                }
            }
        </style>
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
                                <button class="btn-danger" type="submit" name="accion" value="cerrarsesion">Cerrar Sesión</button>
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
                        <h1 class="mt-4">Panel de Ventas</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="Controlador?accion=iniciar">Regresar</a></li>
                            <li class="breadcrumb-item active">Reportes de ventas</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                <p class="mb-0">
                                <div class="content">
                                    <h2>N° total de ventas por semana</h2>
                                    <!-- <canvas id="myChart" height="300" width="300">
                            
                                    </canvas> -->
                                    <canvas id="myChart" width="400" height="400"></canvas>
                                    <form action="Controlador" method="GET">
                                        <input type="hidden" id="uno"  value ="${totUno}" />
                                        <input type="hidden" id="dos"  value ="${totDos}"  />
                                        <input type="hidden" id="tres"  value ="${totTres}"  />
                                        <input type="hidden" id="cuatro"  value ="${totCuatro}"  />
                                        <input type="hidden" id="cinco"  value ="${totCinco}"  />
                                        <input type="hidden" id="seis"  value ="${totSeis}"  />
                                        <input type="hidden" id="siete"  value ="${totSiete}"  />
                                    </form>
                                </div>
                                <div class="content">
                                    <h2>Ganancias por semana</h2>
                                    <canvas id="myChartTwo" width="400" height="400"></canvas>
                                    <form action="Controlador" method="GET">
                                        <input type="hidden" id="unoTot"  value ="${totUnoTot}" />
                                        <input type="hidden" id="dosTot"  value ="${totDosTot}"  />
                                        <input type="hidden" id="tresTot"  value ="${totTresTot}"  />
                                        <input type="hidden" id="cuatroTot"  value ="${totCuatroTot}"  />
                                        <input type="hidden" id="cincoTot"  value ="${totCincoTot}"  />
                                        <input type="hidden" id="seisTot"  value ="${totSeisTot}"  />
                                        <input type="hidden" id="sieteTot"  value ="${totSieteTot}"  />
                                    </form>
                                </div>
                                </p>
                            </div>
                        </div>
                        <div style="height: 90vh"></div> 
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Isis Bakey Website 2022</div>                            
                            <div>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.0.2/chart.min.js" integrity="sha512-dnUg2JxjlVoXHVdSMWDYm2Y5xcIrJg1N+juOuRi0yLVkku/g26rwHwysJDAMwahaDfRpr1AxFz43ktuMPr/l1A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/main.js"></script>
    </body>
</html>
<%    } else {
        out.println("<html><head></head><body onload=\"alert('NO TIENES ACCESO !! INICIO SESIÓN'); window.location='index.jsp' \"></body></html>");
        out.close();
    }
%>