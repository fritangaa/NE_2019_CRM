<%@page import="java.sql.ResultSet"%>
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
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div>
                        <center>
                            <h4>Consulta de usuario</h4>
                        </center>
                    </div>
                    
                    <div>
                        <form action="../Usuario/UsuarioBitacora.jsp" method="GET">
                            <span><span>1&nbsp;&nbsp;</span>Consultas</span><br><br>
                            <input type="text" name="idcliente" id="idcliente" placeholder="id Cliente" maxlength="3" required>
                            <input type="submit" name="ConsultaCliente" class="btn btn-danger" value="Consultar">
                        </form>
                        
                    </div>
                </div>
                
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                        <tr>
                                            <th scope="col">ID bitacora</th>
                                            <th scope="col">Fecha</th>
                                            <th scope="col">Actividad</th>
                                            <th scope="col">ID cliente</th>
                                            <th scope="col">ID usuario</th>
                                            
                                        </tr>
                                    </thead>
                                    
                                    <jsp:useBean id="interTabla" scope="page" class="com.crm.pojo.bitacora.QuerysCRM"/>
                                    <%
                                        String parametro = request.getParameter("idcliente");
                                        ResultSet rsTabla = interTabla.consultaGeneral(parametro);
                                    %>
                                    <tbody>
                                        <%
                                            while (rsTabla.next()) {
                                        %>
                                        <tr id="modalInter">
                                            <td><%=rsTabla.getString(1)%></td>
                                            <td><%=rsTabla.getString(2)%></td>
                                            <td><%=rsTabla.getString(3)%></td>
                                            <td><%=rsTabla.getString(4)%></td>
                                            <td><%=rsTabla.getString(5)%></td>
                                            
                                      
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                        </table>
                    </div>
                </div>
                                    
                                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div>
            
            <form action="../../../Comentario" method="POST">
                            <span><span>2&nbsp;&nbsp;</span>Ingresar Comentario</span><br><br>
                            <input type="text" name="idusuario" id="idusuario" placeholder="Ingresa tu id" style="WIDTH: 228px;" required>
                            <input type="text" name="idcliente" id="idcliente" placeholder="Ingresa el id del cliente" style="WIDTH: 228px;" required>
                            <input type="text" name="fecha" id="fecha" placeholder="Ingresa la fecha" style="WIDTH: 228px;" required>
                            <input type="text" name="actividad" id="comentario" placeholder="Ingresa comentario" style="WIDTH: 228px; HEIGHT: 98px" size=32 required>
                            <h1>&nbsp;</h1>
                            <input type="submit" name="agregar" class="btn btn-danger" style="WIDTH: 228px;" value="Agregar">
                        </form>
                                        
        </div>
                                    </div>
                                    
            </div>
        </div>
                                    
                                    
         
</body>
</html>

