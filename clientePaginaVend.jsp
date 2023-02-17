<%-- 
    Document   : clientePaginaVend
    Created on : 29/10/2022, 06:13:17 PM
    Author     : Santiago Torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .estiloCenter{
                margin-top: 6rem;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Registrar un cliente!</h1>
    </center>

    <div class="Parteuno">
        <div class="card">
            <input type="hidden" disabled="" id="jsVende" value="${msg}">
            <form action="Controlador" method="POST">
                <div class="card-body">
                    <div class="form-group">
                        <label>Datos personales de la persona..</label>
                    </div>
                    <div class="form-group d-flex">
                        <div class="col-sm-6 d-flex">
                            <input type="number" class="form-control" name="txtCedulaC" required placeholder="Cedula">

                        </div>

                        <div class="col-sm-6">
                            <input type="text" class="form-control" name="txtNombreC" required placeholder="Nombre Completo">
                        </div>
                    </div>

                    <div class="form-group d-flex">
                        <div class="col-sm-6 d-flex">
                            <input type="text" class="form-control" name="txtApellidoC" required  placeholder="Apellidos">
                        </div>

                        <div class="col-sm-6">
                            <input type="number" class="form-control" name="txtCelularC" required  placeholder="Celular">
                        </div>
                    </div>

                    <div class="form-group d-flex">
                        <div class="col-sm-3 d-flex">
                            <input type="date" class="form-control" name="txtFNC" required placeholder="Fecha nacimiento">
                        </div>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" name="txtDirecC" required placeholder="Dirección">
                        </div>
                        <div class="col-sm-6">
                            <input type="email" class="form-control" name="txtCorreoC" required placeholder="Correo Eléctronico">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="txtColorC" required placeholder="Color -> Pregunta Seguridad">
                    </div>
                    <center class="estiloCenter">
                        <div class="form-group">
                            <input type="submit" 
                                   name="accion" 
                                   value="Guardar Cliente" class="btn btn-outline-success">  
                        </div>
                    </center>
                </div>
            </form> 
        </div>
    </div>
    <script>
        const regven = document.getElementById("jsVende").value;
        if (regven === "registerSuccess") {
            swal({
                title: "Perfecto",
                text: "Cliente registrado con exito",
                icon: "success",
                button: "Continuar"
            });
        } else {
            if (regven === "RegisterError") {
                swal({
                    title: "Ups....",
                    text: "Algo paso... Intentalo de nuevo",
                    icon: "error",
                    button: "Continuar"
                });
            }
        }
    </script>
</body>
</html>