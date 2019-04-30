<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <title>Inicio</title>
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
        <link href="../Recursos/css/ClientePagoCSS.css" rel="stylesheet" type="text/css"/>
        
        <meta name="description" content="Bootstrap HTML5">
        <meta name="keywords" content="HTML5, CSS3, JavaScript">

        <link href="../Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/CSS">
        <link href="css/laterales.css" rel="stylesheet" type="text/CSS">
    </head>
    <body>
        <header class="sticky-top">
            <!--barra de navegacion creada con bootstrap-->
            <nav id="barraNavegadora" class="navbar navbar-expand-lg colorPrincipal">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto"> 
                        
                        <li class="nav-item dropdown">
                            <a href="../Cliente/ClienteInicio.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_inicio.png" /><p>Inicio</p></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" style="color: white"  id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="ic" border="dropdown-toggle0" height="25" width="25" src="../Recursos/img/prod.png" />Catalogo de productos</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="../Cliente/ClienteProducto.jsp" style="color: white">Telefonia</a>
                                <a class="dropdown-item" href="../Cliente/ClienteProducto.jsp" style="color: white">Conectores</a>
                                <a class="dropdown-item" href="../Cliente/ClienteProducto.jsp" style="color: white">Enrrutadores</a>
                                <a class="dropdown-item" href="../Cliente/ClienteProducto.jsp" style="color: white">Cables</a>
                                
                            </div>
                        </li>
                    </ul>   
                </div>
                <a class="navbar-brand text-white" href="#"><h5>Nombre de Cliente</h5></a>
                <img src="../Recursos/img/avatar.png" style="height: 50px;" class="img-fluid rounded">
            </nav>
        </header>
        <div id="principal">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 container-fluid"><!-- Seccion central (Visualizar tarea) -->
                    <br>
                    <center> 
                        <font face="Comic Sans MS" style="color:blue"><h1>Empresa de Tecnologías de la información y comunicación</h1></font>
                    </center>
                <img src="../Recursos/img/iniciocliente.jpg" style="height: 400px; width: 100%; display: block;" class="img-fluid rounded">
                </div>
                
            </div>
            
        </div>

    </div> 
</div>
</body>
</html>

