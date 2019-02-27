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
     <link href="../Recursos/css/buscador.css" rel="stylesheet" type="text/css"/>
    
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
                            <a href="../Usuario/UsuarioBitacora.jsp" class="nav-link text-white" id="Bitacora"  aria-haspopup="true" aria-expanded="false"><h5>Bitácora</h5></a>
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
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 container-fluid" ><!-- Seccion derecha (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <div style="margin: 5%;">
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 container-fluid"><!-- Seccion central (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin-left: 2.5%;">
                        <div style="margin: 2.5%;">
                            <br>
                            <div class="row">
                                 <div class="container h-100">
                                <div class="d-flex justify-content-center h-100">
                                    <div class="searchbar">
                                        <input class="search_input" type="text" id="buscar" name="" placeholder="Buscar...">
                                        <a href="#" class="search_icon" onkeyup="return categoria()"><i class="fas fa-search"></i></a>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <br>
                            <form >
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                        <h5>Productos</h5>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

                                    </div>
                                    <div class="form-group col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                        <select name="Categoria" id="Categoriaa" class="form-control" >
                                            <option value="0">Seleccione Una opccion</option>
                                            <option value="product">Producto</option>
                                            <option value="prov">Proovedor</option>
                                            <option value="desc">Descripción</option>
                                            <option value="precio">Precio</option>
                                        </select>
                                    </div>  
                                </div>
                                 <li>
                                     <button type="button" class="button" onclick="return categoria()">Buscar</button>
                                                </li>

                            </form>
                            <br>
                            <table class="table">
                                <thead class=" thead-light">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Proveedor</th>
                                        <th scope="col">Descripción</th>
                                        <th scope="col">Precio</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Cable coaxial</td>
                                        <td>Calbes CA CV</td>
                                        <td>Calbe de 2m</td>
                                        <td>$150</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Router MB-878</td>
                                        <td>CISCO</td>
                                        <td>V2.5</td>
                                        <td>$45,000</td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 container-fluid" ><!-- Seccion derecha (Visualizar tarea) -->
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <div style="margin: 5%;">
                            
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

    </div> 
</div>
</body>
</html>

