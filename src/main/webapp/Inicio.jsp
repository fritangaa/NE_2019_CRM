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
        <link href="Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>

        <link href="Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="sticky-top">
            <!--barra de navegacion creada con bootstrap-->
            <nav id="barraNavegadora" class="navbar navbar-expand-lg colorPrincipal" >
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto">                    
                        <li class="nav-item">
                            <a href="Inicio.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_inicio.png" /><p>Inicio</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Usuario/Miembros.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_miembros.png" /><p>Miembros</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Terceros.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_terceros.png" /><p>Teceros</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Productos.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic"  border="0" height="25" width="25" src="Recursos/img/ic_productos.png" /><p>Productos</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Comercial.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_comercial.png" /><p>Comercial</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Usuario/Financiera.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic"  border="0" height="25" width="25" src="Recursos/img/ic_financiera.png" /><p>Financiera</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Usuario/RH.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_rh.png" /><p>RRHH</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Agenda.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_agenda.png" /><p>Agenda</p></a>
                        </li>
                    </ul> 
                </div>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_usuario.png" /><p>Administrador</p></a>                       
                    </li>
                </ul>
            </nav>
        </header>


        <div id="principal">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 container-fluid" style="background-color: #f8f8f8;"><!-- Seccion central (Visualizar tarea) -->
                    <div  class="row" style="height: 200px;">    
                        <img class="imagen" border="0" height="auto" width="50%" src="Recursos/img/img_logo_2.png" />
                    </div>
                    <div  class="row">
                        <div class="list-group" style="width: 100%;">
                            <button type="button" class="list-group-item list-group-item-action"><span style="margin-right: 10px;"><img border="0" height="20" width="20" src="Recursos/img/ic_control.png" /></span><strong>Mi panel de contro</strong></button>
                            <button type="button" class="list-group-item list-group-item-action"><span style="margin-right: 10px;"><img border="0" height="20" width="20" src="Recursos/img/ic_configuracion.png" /></span><strong>Configuración</strong></button>
                            <button type="button" class="list-group-item list-group-item-action"><span style="margin-right: 10px;"><img border="0" height="20" width="20" src="Recursos/img/ic_herramienta.png" /></span><strong>Herramientas</strong></button>
                            <button type="button" class="list-group-item list-group-item-action"><span style="margin-right: 10px;"><img border="0" height="20" width="20" src="Recursos/img/ic_grupos.png" /></span><strong>Usuarios y grupos</strong></button>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                    <div class="row">
                        <p style="padding: 10px 10px"><span style="margin-right: 10px;"><img border="0" height="50" width="50" src="Recursos/img/ic_inicio_grande.png" /></span>Inicio</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                            <p class="titulos">Items pendientes </p>  
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>Eventos</td>
                                        <td>Propuestos</td>
                                        <td>Propuestos</td>
                                    </tr>
                                    <tr>
                                        <td>Propuestos</td>
                                        <td>Propuestos</td>
                                        <td>Pedidos</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                            <p class="titulos">Estadísticas de la base de datos</p>            
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>Usuarios</td>
                                        <td>Clientes</td>
                                        <td>Clientes potenciales</td>
                                    </tr>
                                    <tr>
                                        <td>Proveedoes</td>
                                        <td>Contectos</td>
                                        <td>Miembros</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div> 
</div>
</body>
</html>

