<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Finanzas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="../Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="../Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js" integrity="sha256-CfcERD4Ov4+lKbWbYqXD6aFM9M51gN4GUEtDhkWABMo=" crossorigin="anonymous"></script>
        <link href="../Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/CSS">
        <link href="css/laterales.css" rel="stylesheet" type="text/CSS">
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
                            <a href="../Inicio.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_inicio.png" /><p>Inicio</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Miembros.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_miembros.png" /><p>Miembros</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="../Terceros.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_terceros.png" /><p>Teceros</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="../Productos.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic"  border="0" height="25" width="25" src="../Recursos/img/ic_productos.png" /><p>Productos</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="../Comercial.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_comercial.png" /><p>Comercial</p></a>
                        </li>
                        <li class="nav-item">
                            <a href="Financiera.jsp" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic"  border="0" height="25" width="25" src="../Recursos/img/ic_financiera.png" /><p>Financiera</p></a>
                        </li>
                        
                        <li class="nav-item">
                            <a href="../Agenda.jsp" class="nav-link text-white"  aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="../Recursos/img/ic_agenda.png" /><p>Agenda</p></a>
                        </li>
                </div>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a href="" class="nav-link text-white" aria-haspopup="true" aria-expanded="false"><img class="ic" border="0" height="25" width="25" src="Recursos/img/ic_usuario.png" /><p>Administrador</p></a>                       
                    </li>
                </ul>
            </nav>
        </header>


        <div id="principal">
             <div class="container-fluid">
                
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 form-style-5"> <!-- Seccion izquierda -->
                        <span class="number">1</span>facturas proveedor
                        <form method="POST" action="../../ReportesExcel" target="">
                            <div class="table-responsive"><table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">id factura</th>
                                            <th scope="col">RFC proveedor</th>
                                            <th scope="col">Total </th>
                                            
                                        </tr>
                                    </thead>
                                    <jsp:useBean id="interTabla" scope="page" class="com.crm.pojo.usuariocrm.QuerysCRM"/>
                                    <%
                                        ResultSet rsTabla = interTabla.consultaFactProv();
                                    %> 
                                    <tbody>
                                        <%
                                            while (rsTabla.next()) {
                                        %>
                                        <tr id="modalInter">
                                            <td><%=rsTabla.getString(1)%></td>
                                            <td><%=rsTabla.getString(2)%></td>
                                            <td><%=rsTabla.getString(3)%></td>
                                            
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table></div>  
                                    <br>
                                    
                        </form>
                    </div>                       


                    <div  class="col-lg-6 col-md-6 col-sm-6 col-xs-12 form-style-5"><!-- Seccion central --> 
                        <span class="number">2</span>facturas cliente
                        
                                                            
                                    <form method="POST" action="../../ReportesExcel" target="">
                                        
                            <div class="table-responsive"><table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">id factura</th>
                                            <th scope="col">RFC cliente</th>
                                            <th scope="col">tatal</th>
                                            
                                        </tr>
                                    </thead>
                                    <jsp:useBean id="interTablaAfil" scope="page" class="com.crm.pojo.usuariocrm.QuerysCRM"/>
                                    <%
                                        ResultSet rsTablaAfil = interTablaAfil.consultaFactCliente();
                                    %> 
                                    <tbody>
                                        <%
                                            while (rsTablaAfil.next()) {
                                        %>
                                        <tr id="modalInter">
                                            <td><%=rsTablaAfil.getString(1)%></td>
                                            <td><%=rsTablaAfil.getString(2)%></td>
                                            <td><%=rsTablaAfil.getString(3)%></td>
                                            
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table></div>  
                                    <br>
                                    
                        </form>
                    </div>
                                    
                    <div style="background-color: #f4f7f8;" class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"><!-- Seccion derecha -->
                        
                          
                        
                        <form method="POST" action="Financiera.jsp" onsubmit="return">
                            <div id="titulo" class="col-12">
                                <span class="number">3</span>B&uacute;squeda de<br>facturas</div>
                                <input type="text" name="id_factura" placeholder="Ingresa id de factura" id="id_factura" required>
                            
                            <center><input type="submit" value="Consultar" style="background-color: #3498DB" name="Buscar" class="btn"></center>
                            <br>
                        </form>
                        
                    </div>
                        
                    </div>

                        
                </div>
            </div> 
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>

