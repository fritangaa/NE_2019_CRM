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
                            <a href="../Usuario/UsuarioProducto.jsp" class="nav-link text-white" id="Bitacora"  aria-haspopup="true" aria-expanded="false"><h5>Producto</h5></a>
                        </li>
                    </ul>   
                </div>
                <a class="navbar-brand text-white" href="#"><h5>Nombre de Usuario</h5></a>
                <img src="../Recursos/img/img_logo_2.png" style="height: 50px;" class="img-fluid rounded">
            </nav>
        </header>

        <div id="principal">
            <div class="container-fluid">

                <div class="row">
                    <br>
                </div>

                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 container-fluid" ><!-- Seccion izquierda) -->
                        <div style="background-color: #EDEDED; margin: 5%;">
                            <div style="margin: 5%;">
                                <form method="POST" action="../../Eliminar_producto" onsubmit="return">
                                    <div id="titulo" class="col-12">
                                        <h6 align="center">Eliminar producto por código</h6>
                                    </div>
                                    <br>
                                    <center> <input class="form-control"  type="number" name="codprod" min="1" minlength="1" placeholder="Código" id="codprod" required onkeypress="return SoloNumeros(event)"></center>
                                    <div>
                                        <br>
                                    </div>                           
                                    <center><input type="submit" value="Eliminar" style="background-color: #9F150D" name="Buscar" class="btn btn-danger"></center>
                                    <br>
                                </form>

                                <form method="POST" action="UsuarioProducto.jsp">
                                    <h6 align="center">Búsqueda por código de producto</h6>
                                    <br>
                                    <center><input class="form-control"  type="number" name="codprod" min="1" minlength="1" placeholder="Código" id="codigo" required onkeypress="return SoloNumeros(event)"></center>
                                    <div>
                                        <br>
                                    </div>
                                    <center><input type="submit" value="Consultar" style="background-color: #9F150D" name="Buscar" class="btn btn-danger"></center>
                                </form>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><!-- Seccion central (Visualizar tarea) -->
                        <div style="background-color: #EDEDED;">
                            <div class="table-responsive"><table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">código producto</th>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Categoria</th>
                                            <th scope="col">Precio Unitario</th>
                                            <th scope="col">ID Proveedor</th>

                                        </tr>
                                    </thead>
                                    <jsp:useBean id="interTabla" scope="page" class="com.crm.pojo.inventario.QuerysProducto"/>
                                    <%
                                        String buscar = request.getParameter("codprod");
                                        ResultSet rsTabla = interTabla.consultaespe(buscar);
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
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-style-5"><!-- Seccion derecha -->
                        <div style="background-color: #EDEDED; margin: 5%;">
                            <div style="margin: 5%;">
                                <form method="POST" action="../../ingresar_producto" onsubmit="return">  
                                    <h6 align="center">Agregar nuevo producto</h6>
                                    <br>
                                    <input class="form-control"  type="number" name="codprodnuevo" placeholder="Código de barras" min="1" minlength="1" id="codigo_nuevoprod" required onkeypress="return SoloNumeros(event)">                             
                                    <br>
                                    <input  class="form-control" type="text" name="nomproducto" placeholder="Nombre" id="nom_producto" required>
                                    <br>
                                    <select class="form-control"  id="categoria" name="field4">
                                        <optgroup label="categorias" required>
                                            <option value="@">Seleccione&nbsp;una&nbsp;categoria</option>
                                            <option value="com">Computo</option>
                                            <option value="red">Redes</option>
                                            <option value="cab">Cables</option>
                                            <option value="dis">Dispositivos</option>
                                            <option value="con">Conectores</option>                                
                                            <option value="otr">Otros</option>
                                        </optgroup>
                                    </select>
                                    <br>
                                    <input class="form-control"  type="text" name="costoproducto" min="1" minlength="1" placeholder="Costo" id="costo" required onkeypress="return SoloNumeros(event)">
                                    <br>
                                    <input class="form-control"  type="text" name="provproducto" placeholder="Proveedor" id="proveedor" required onkeypress="return soloLetras(event)">
                                    <br>
                                    <center><input  type="submit" value="Agregar" style="background-color: #9F150D" name="nuevo" class="btn btn-danger"></center>                       
                                </form>
                                <br>
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>

    </body>
</html>

