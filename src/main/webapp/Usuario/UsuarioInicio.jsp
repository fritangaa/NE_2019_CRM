<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="../Gerencia/validaciones/validacion.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo=" crossorigin="anonymous"></script>
        <script src="../Recursos/js/validaciones.js" type="text/javascript"></script>
    </head>
    <body>
        <header class="sticky-top">
            <!--barra de navegacion creada con bootstrap-->
            <nav class="navbar navbar-expand-lg navbar-dark barra bg-primary" >
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto">                    
                        <li class="nav-item">
                            <a href="../Usuario/UsuarioInicio.jsp" class="nav-link text-white" id="Inicio"  aria-haspopup="true" aria-expanded="false"><h5>Inicio</h5></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" id="Bitacora"  aria-haspopup="true" aria-expanded="false"><h5>Bitácora</h5></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" id="Informe"  aria-haspopup="true" aria-expanded="false"><h5>Informe</h5></a>
                        </li>
                    </ul>   
                </div>
                <a class="navbar-brand text-white" href="#"><h5>Nombre de Usuario</h5></a>
            </nav>
        </header>
        <div id="principal">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 container-fluid"><!-- Seccion izquierda (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <h5 align="center">Información del Cliente</h5>
                        <div style="margin: 5%;">
                            <div class="form-group">
                                <label for="nomCliente">Nombre del cliente</label>
                                <input type="text" id="nomCliente" name="nomCliente" class="form-control" disabled>  
                            </div>                         
                            <div class="form-group">
                                <label for="dirCliente">Dirección</label>
                                <input type="text" id="dirCliente" name="dirCliente" class="form-control" disabled>  
                            </div>
                            <div class="form-group">
                                <label for="codigoCliente">Código postal</label>
                                <input type="text" class="form-control" id="codigoCliente" name="codigoCliente" disabled>
                            </div>
                            <div class="form-group">
                                <label for="correoCliente">Correo</label>
                                <input type="text" class="form-control" id="correoCliente" name="correoCliente" disabled>
                            </div>
                            <div class="form-group">
                                <br>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 container-fluid"><!-- Seccion central (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin-top: 2.5%;">
                        <div style="margin: 2.5%;">
                            <h5 align="center">Promociones disponibles</h5>
                            <br>
                            <table class="table">
                                <thead class=" thead-light">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">Handle</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fat</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 container-fluid" ><!-- Seccion derecha (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <div style="margin: 5%;">
                            <h5 align="center">Buscar Cliente</h5>
                            <form role="form" method="post" onsubmit="return BuscarCliente()">
                                <div class="form-group">
                                    <label for="idCliente">Id del Cliente:</label>
                                    <input type="text" class="form-control" id="idCliente" name="idCliente" onkeypress="return SoloNumeros(event)">
                                </div>         
                                <button type="submit" class="btn btn-default">Buscar</button>
                                <div class="form-group">
                                    <br>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div> 
</div>
</body>
</html>

