<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<%-- 
    Document   : Prod_lista
    Created on : 28/04/2019, 06:02:43 PM
    Author     : Marii
--%>
<html>
    <head>
        <title>Usiario_CRM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo=" crossorigin="anonymous"></script>
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
                      <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 container-fluid">
                       <div  class="row">
                        <div class="list-group" style="width: 100%;">
                            <span id="titulo"><h5>Productos</h5></span>
                            <form action="Prod_lista.jsp" method="POST">
                                 <input class="btn btn-secondary form-control" id="lista" name="lista" type="submit" 
                                        style="background-color: #818B9F" value="Lista"></form> <br>                        
                            <form action="Prod_stock.jsp" method="POST">
                                 <input class="btn btn-secondary form-control" id="stock" name="stock" type="submit" 
                                        style="background-color: #818B9F" value="Stocks"></form><br>
                           </div>
                       </div>
                    </div>
                    <br>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 container-fluid"><!-- Seccion derecha (Visualizar tarea) -->
                    <div class="row">
                        <p style="padding: 10px 10px"><span style="margin-right: 10px;"><img border="0" height="50" width="50" src="Recursos/img/ic_area_producto.png" /></span>Área de producto</p>
                    </div>
                    <div class="row">
                      <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 container-fluid"><!-- Seccion central -->
                        <div class="row justify-content-center" style="background-color: #f8f8f8; margin-left: 10%; margin-right: 10%;" >
                        <h2 class="titulos text-center" style="width: 100%;">Registros</h2>  
                        <br>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Folio</th>
                                    <th>Proveedor</th>
                                    <th>Nombre</th>
                                    <th>Tipo</th>
                                    <th>Cantidad</th>
                                    <th>Costo Venta</th>
                                </tr>                     
                            <jsp:useBean id="tabla" scope="page" class="com.crm.pojo.Usuario.Prodlista"/>
                                <%                                    
                                    ResultSet rsTabla = tabla.ConsultaDev();

                                %> 
                                <tbody>
                                    <%                                            while (rsTabla.next()) {
                                    %>
                                    <tr id="modalInter">
                                        <td><%=rsTabla.getString(1)%></td>
                                        <td><%=rsTabla.getString(2)%></td>
                                        <td><%=rsTabla.getString(3)%></td>
                                        <td><%=rsTabla.getString(4)%></td>
                                        <td><%=rsTabla.getString(5)%></td>
                                        <td><%=rsTabla.getString(6)%></td>

                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>                  

                            </table> 
                        </div>
                        </div> </div>                         
                    </div>

                </div>
            </div>
        </div>

    </div> 
</div>
</body>
</html>

