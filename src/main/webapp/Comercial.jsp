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
                            <button type="button" class="list-group-item list-group-item-action"><strong>Propuestas comerciales</strong></button>
                            <button type="button" class="list-group-item list-group-item-action">Nuevo propuesto</button>
                            <button type="button" class="list-group-item list-group-item-action">Lista</button>
                            <button type="button" class="list-group-item list-group-item-action">Estad�stica</button>
                            <button type="button" class="list-group-item list-group-item-action"><strong>Pedidos de clientes</strong></button>
                            <button type="button" class="list-group-item list-group-item-action">Nuevo pedido</button>
                            <button type="button" class="list-group-item list-group-item-action">Lista</button>
                            <button type="button" class="list-group-item list-group-item-action">Estad�stica</button>
                            <button type="button" class="list-group-item list-group-item-action"><strong>Pedidos a proveedores</strong></button>
                            <button type="button" class="list-group-item list-group-item-action">Nuevo pedido</button>
                            <button type="button" class="list-group-item list-group-item-action">Lista</button>
                            <button type="button" class="list-group-item list-group-item-action">Estad�stica</button>
                            <button type="button" class="list-group-item list-group-item-action"><strong>Contratos/Suscripciones</strong></button>
                            <button type="button" class="list-group-item list-group-item-action">Nuevo contrato/suscripci�n</button>
                            <button type="button" class="list-group-item list-group-item-action">Lista</button>
                            <button type="button" class="list-group-item list-group-item-action">Servicios</button>
                            <button type="button" class="list-group-item list-group-item-action"><strong>Intervenciones</strong></button>
                        </div>
                    </div>
                    <br>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                    <div class="row">
                        <p style="padding: 10px 10px"><span style="margin-right: 10px;"><img border="0" height="50" width="50" src="Recursos/img/ic_area_comercial.png" /></span>�rea comercial</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="3">Propuestos borrador</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">Sin propuestos</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="3">Propuestos de proveedor borrador</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">Sin propuestos</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="3">Pedidos borrador</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">Sin pedidos</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="3">Draft purchase orders</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">No purchase order</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="2">�ltimos 3 clientes o clientes potenciales</td>
                                        <td class = "text-right"><a href="#">Lista completa</a></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">Ninguno</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="2">�ltimos 0 proveedores modificados</td>
                                        <td class = "text-right"><a href="#">Lista completa</a></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="3">Ninguno</td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="2">�ltimas 3 acciones completadas</td>
                                        <td class = "text-right"><a href="#">Lista completa</a></td>
                                    </tr>
                                </thead>
                            </table>
                            <table class="table table-bordered">
                                <thead class="titulos">
                                    <tr>
                                        <td colspan="2">10 acciones m�s antiguas por completar</td>
                                        <td class = "text-right"><a href="#">Lista completa</a></td>
                                    </tr>
                                </thead>
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

