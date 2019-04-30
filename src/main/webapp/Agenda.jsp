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
                    <div class="row">
                        <ul  class="nav nav-tabs" style="width: 100%; margin-left: 40px; margin-right: 40px;">
                            <li class="nav-item">
                                <h5  class="nav-link" href="#lista" data-toggle="tab">Vista de la lista</h5>
                            </li>
                            <li class="nav-item">
                                <h5 class="nav-link active" href="#mes" data-toggle="tab">Vista del mes</h5>
                            </li>
                            <li class="nav-item">
                                <h5 class="nav-link" href="#semana" data-toggle="tab">Vista de la semana</h5>
                            </li>
                            <li class="nav-item">
                                <h5 class="nav-link" href="#dia" data-toggle="tab">Vista de día</h5>
                            </li>
                            <li class="nav-item">
                                <h5 class="nav-link" href="#usuario" data-toggle="tab">Vista por usuario</h5>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="tab-content"  style="width: 100%; margin-left: 40px; margin-right: 40px;">
                            <div class="tab-pane" id="lista">
                                <h3>1</h3>
                            </div>
                            <div class="tab-pane active completo"id="mes">
                                <div class="row">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Eventos asignados a</td>
                                                <td>
                                                    <select class="form-control"  id="categoria" name="field4">
                                                        <optgroup label="categorias" required>
                                                            <option value="@">SuperAdmin</option>
                                                            <option value="com">Computo</option>
                                                            <option value="red">Redes</option>
                                                            <option value="cab">Cables</option>
                                                            <option value="dis">Dispositivos</option>
                                                            <option value="con">Conectores</option>                                
                                                            <option value="otr">Otros</option>
                                                        </optgroup>
                                                    </select>
                                                </td>
                                                <td>o A todos los usuarios del grupo</td>
                                                <td colspan="2">
                                                    <select class="form-control"  id="categoria" name="field4">
                                                        <optgroup label="categorias" required>
                                                            <option value="@"></option>
                                                            <option value="com">Computo</option>
                                                            <option value="red">Redes</option>
                                                            <option value="cab">Cables</option>
                                                            <option value="dis">Dispositivos</option>
                                                            <option value="con">Conectores</option>                                
                                                            <option value="otr">Otros</option>
                                                        </optgroup>
                                                    </select>
                                                </td>
                                                <td></td>
                                                <td rowspan="4">
                                                    <button type="button" class="btn btn-secondary" style="margin-top: 25%; margin-bottom: 25%;">Actualizar</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Tipo</td>
                                                <td colspan="2">
                                                    <select class="form-control"  id="categoria" name="field4">
                                                        <optgroup label="categorias" required>
                                                            <option value="@"></option>
                                                            <option value="com">Computo</option>
                                                            <option value="red">Redes</option>
                                                            <option value="cab">Cables</option>
                                                            <option value="dis">Dispositivos</option>
                                                            <option value="con">Conectores</option>                                
                                                            <option value="otr">Otros</option>
                                                        </optgroup>
                                                    </select>
                                                </td>
                                                <td colspan="3"></td>
                                            </tr>
                                            <tr>
                                                <td>Tercero</td>
                                                <td>
                                                    <select class="form-control"  id="categoria" name="field4">
                                                        <optgroup label="categorias" required>
                                                            <option value="@"></option>
                                                            <option value="com">Computo</option>
                                                            <option value="red">Redes</option>
                                                            <option value="cab">Cables</option>
                                                            <option value="dis">Dispositivos</option>
                                                            <option value="con">Conectores</option>                                
                                                            <option value="otr">Otros</option>
                                                        </optgroup>
                                                    </select>
                                                </td>
                                                <td  colspan="4"></td>
                                            </tr>
                                            <tr>
                                                <td>Estado</td>
                                                <td colspan="2">
                                                    <select class="form-control"  id="categoria" name="field4">
                                                        <optgroup label="categorias" required>
                                                            <option value="@"></option>
                                                            <option value="com">Computo</option>
                                                            <option value="red">Redes</option>
                                                            <option value="cab">Cables</option>
                                                            <option value="dis">Dispositivos</option>
                                                            <option value="con">Conectores</option>                                
                                                            <option value="otr">Otros</option>
                                                        </optgroup>
                                                    </select>
                                                </td>
                                                <td colspan="3"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
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
                    <div class="row">
                        <div class="card" style="width: 100%; margin-left: 40px; margin-right: 40px;">
                            <h3 class="card-header" id="monthAndYear"></h3>
                            <table class="table table-bordered table-responsive-sm" id="calendar">
                                <thead>
                                    <tr>
                                        <th>Domingo</th>
                                        <th>Lunes</th>
                                        <th>Martes</th>
                                        <th>Miercoles</th>
                                        <th>Jueves</th>
                                        <th>Viernes</th>
                                        <th>Sabado</th>
                                    </tr>
                                </thead>

                                <tbody id="calendar-body">

                                </tbody>
                            </table>

                            <div class="form-inline">

                                <button class="btn btn-outline-primary col-sm-6" id="previous" onclick="previous()">Previous</button>

                                <button class="btn btn-outline-primary col-sm-6" id="next" onclick="next()">Next</button>
                            </div>
                            <br/>
                            <form class="form-inline">
                                <label class="lead mr-2 ml-2" for="month">Jump To: </label>
                                <select class="form-control col-sm-4" name="month" id="month" onchange="jump()">
                                    <option value=0>Jan</option>
                                    <option value=1>Feb</option>
                                    <option value=2>Mar</option>
                                    <option value=3>Apr</option>
                                    <option value=4>May</option>
                                    <option value=5>Jun</option>
                                    <option value=6>Jul</option>
                                    <option value=7>Aug</option>
                                    <option value=8>Sep</option>
                                    <option value=9>Oct</option>
                                    <option value=10>Nov</option>
                                    <option value=11>Dec</option>
                                </select>


                                <label for="year"></label><select class="form-control col-sm-4" name="year" id="year" onchange="jump()">
                                    <option value=1990>1990</option>
                                    <option value=1991>1991</option>
                                    <option value=1992>1992</option>
                                    <option value=1993>1993</option>
                                    <option value=1994>1994</option>
                                    <option value=1995>1995</option>
                                    <option value=1996>1996</option>
                                    <option value=1997>1997</option>
                                    <option value=1998>1998</option>
                                    <option value=1999>1999</option>
                                    <option value=2000>2000</option>
                                    <option value=2001>2001</option>
                                    <option value=2002>2002</option>
                                    <option value=2003>2003</option>
                                    <option value=2004>2004</option>
                                    <option value=2005>2005</option>
                                    <option value=2006>2006</option>
                                    <option value=2007>2007</option>
                                    <option value=2008>2008</option>
                                    <option value=2009>2009</option>
                                    <option value=2010>2010</option>
                                    <option value=2011>2011</option>
                                    <option value=2012>2012</option>
                                    <option value=2013>2013</option>
                                    <option value=2014>2014</option>
                                    <option value=2015>2015</option>
                                    <option value=2016>2016</option>
                                    <option value=2017>2017</option>
                                    <option value=2018>2018</option>
                                    <option value=2019>2019</option>
                                    <option value=2020>2020</option>
                                    <option value=2021>2021</option>
                                    <option value=2022>2022</option>
                                    <option value=2023>2023</option>
                                    <option value=2024>2024</option>
                                    <option value=2025>2025</option>
                                    <option value=2026>2026</option>
                                    <option value=2027>2027</option>
                                    <option value=2028>2028</option>
                                    <option value=2029>2029</option>
                                    <option value=2030>2030</option>
                                </select></form>
                        </div>
                        <script type="text/javascript" src="Recursos/js/calendario.js"></script>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div> 
</div>
</body>
</html>

