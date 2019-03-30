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
                            <a href="Miembros.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_miembros.png" /><p>Miembros</p></a>
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
                            <a href="Financiera.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic"  border="0" height="25" width="25" src="Recursos/img/ic_financiera.png" /><p>Financiera</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="RH.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_rh.png" /><p>RRHH</p></a>
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
                            <button type="button" class="list-group-item list-group-item-action"><strong>Eventos</strong></button>
                            <button type="button" class="list-group-item list-group-item-action">Nuevo evento</button>
                            <button type="button" class="list-group-item list-group-item-action">Lista</button>
                            <button type="button" class="list-group-item list-group-item-action">Mis eventos incompletos</button>
                            <button type="button" class="list-group-item list-group-item-action">Mis eventos finalizados</button>
                            <button type="button" class="list-group-item list-group-item-action">Todos los eventos incompletos</button>
                            <button type="button" class="list-group-item list-group-item-action">Todos los eventos finalizados</button>
                            <button type="button" class="list-group-item list-group-item-action">Calendario</button>
                            <button type="button" class="list-group-item list-group-item-action">Mis eventos incompletos</button>
                            <button type="button" class="list-group-item list-group-item-action">Mis eventos finalizados</button>
                            <button type="button" class="list-group-item list-group-item-action">Todos los eventos incompletos</button>
                            <button type="button" class="list-group-item list-group-item-action">Todos los eventos finalizados</button>
                            <button type="button" class="list-group-item list-group-item-action">Informes</button>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                    <div class="row">
                        <p style="padding: 10px 10px"><span style="margin-right: 10px;"><img border="0" height="50" width="50" src="Recursos/img/ic_agenda_grande.png" /></span>Agenda</p>
                    </div>
                    <div id="tabAgenda"  class="row container">
                        <div class="row">
                            <ul  class="nav nav-pills">
                                <li class="active">
                                    <a  href="#lista" data-toggle="tab">Vista de la lista</a>
                                </li>
                                <li>
                                    <a href="#mes" data-toggle="tab">Vista del mes</a>
                                </li>
                                <li>
                                    <a href="#semana" data-toggle="tab">Vista de la semana</a>
                                </li>
                                <li>
                                    <a href="#dia" data-toggle="tab">Vista de día</a>
                                </li>
                                <li>
                                    <a href="#usuario" data-toggle="tab">Vista por usuario</a>
                                </li>
                            </ul>
                        </div>
                        <div class="row">
                            <div class="tab-content clearfix">
                                <div class="tab-pane active" id="lista">
                                    <h3>1</h3>
                                </div>
                                <div class="tab-pane" id="mes">
                                    <h3>We use the class nav-pills instead of nav-tabs which automatically creates a background color for the tab</h3>
                                </div>
                                <div class="tab-pane" id="semana">
                                    <h3>3</h3>
                                </div>
                                <div class="tab-pane" id="dia">
                                    <h3>4</h3>
                                </div>
                                <div class="tab-pane" id="usuario">
                                    <h3>5</h3>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>

            </div>
        </div>
    </div>

</div> 
</div>
</body>
</html>

