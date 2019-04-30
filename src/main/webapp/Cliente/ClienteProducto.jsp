<%@page import="com.crm.clases.cliente.ProductoCliente"%>
<%@page import="com.crm.pojo.cliente.ClienteDB"%>
<%@page import="java.util.LinkedList"%>
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
        <link href="../Recursos/css/ClientePagoCSS.css" rel="stylesheet" type="text/css"/>

        
               <meta name="description" content="Bootstrap HTML5">
        <meta name="keywords" content="HTML5, CSS3, JavaScript">
    </head>
    
     <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">
    <script src="bootstrap.min.js"></script>
    
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
                            <a href="../Cliente/ClienteInicio.jsp" class="nav-link text-white" id="Inicio"  aria-haspopup="true" aria-expanded="false"><h5>Inicio</h5></a>
                        </li>
                        <li class="nav-item">
                            <a href="../Cliente/ClienteProducto.jsp" class="nav-link text-white" id="Bitacora"  aria-haspopup="true" aria-expanded="false"><h5>Productos</h5></a>
                        </li>
                        <li class="nav-item">
                            <a href="../Cliente/ClientePago.jsp"  class="nav-link text-white" id="Informe"  aria-haspopup="true" aria-expanded="false"><h5>Pago</h5></a>
                        </li>
                    </ul>   
                </div>
                <a class="navbar-brand text-white" href="#"><h5>Nombre de Cliente</h5></a>
                <img src="../Recursos/img/img_logo_2.png" style="height: 50px;" class="img-fluid rounded">
            </nav>
        </header>
       <!--   <div id="principal">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 container-fluid" >   Seccion derecha (Visualizar tarea
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <div style="margin: 5%;">

                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 container-fluid"> Seccion central (Visualizar tarea) 
                    <div style="background-color: #EDEDED; margin-left: 2.5%;">
                        <div style="margin: 2.5%;">
                            <br>
                            <h5 align="center">Productos</h5>
                            <br>
                            <table class="table">
                                <thead class=" thead-light">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Producto</th>
                                        <th scope="col">Proveedor</th>
                                        <th scope="col">Descripción</th>
                                        <th scope="col">Precio</th>
                                        <th scope="col">Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        LinkedList<ProductoCliente> lista = ClienteDB.consultaProducto();
                                        for (int i = 0; i < lista.size(); i++) {
                                            out.println("<form role='form' method='post' action='../CompraCliente'>");
                                            out.println("<tr>");
                                            out.println("<th scope='row'><input type='number' name='idproducto' min='0' max='100' id='idproducto' value='" + lista.get(i).getIdProducto() + "'></th>");
                                            out.println("<td >" + lista.get(i).getNombre() + "</td>");
                                            out.println("<td>" + lista.get(i).getProveedor() + "</td>");
                                            out.println("<td></td>");
                                            out.println("<td>$<input type='number' name='precio' min='0' max='10000' id='precio' required value='" + lista.get(i).getPrecio() + "'  ></td>");
                                            out.println("<td><input type='number' name='cantidad' min='0' max='100' id='cantidad' value='0' required></></td>");
                                            out.println("<td><a href='#' class='btn btn-default producto' precio='precio' titulo='Telefonos inalambricos' role='button'>añadir a carrito</a></td>");
                    
                                            
                                            out.println("</form>");
                                        }
                                    %>
                         
                                </tbody>
                                
                                          
                            </table>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 container-fluid"  ><!--Seccion derecha (Visualizar tarea
                    <div style="background-color: #EDEDED; margin: 5%;">
                        <div style="margin: 5%;">
                            
                             <p>
			<a href="#" class="btn btn-default producto" precio="24" titulo="Telefonos inalambricos" role="button">añadir a carrito</a></p>

                        </div>
                    </div>
                </div>
            </div>

        </div>-->

    </div> 
</div>



 <aside id="columna" class="col-md-2">
 
           <div class="list-group">
  <a href="#" class="list-group-item active">
    Categoría
  </a>
               
  <a href="#" class="list-group-item">Telefonia</a>
  <a href="#" class="list-group-item">Conectores</a>
  <a href="#" class="list-group-item">Enrrutadores</a>
  <a href="#" class="list-group-item">Cables</a>
</div>
        </aside>

        <section id="seccion" class="col-md-8">
            <div class="row">
      <div class="col-xs-6 col-sm-3 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="imagen1.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Telefonos analogos</h3>
            <p>buena señal</p>
            <p>
			<a href="#" class="btn btn-default producto" precio="65" titulo="Telefonos analogos"role="button">Comprar</a></p>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-sm-3 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="imagen2.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Radio de dos vias</h3>
            <p> arta señal</p>
            <p>
			<a href="#" class="btn btn-default producto" precio="56" titulo="Radio de dos vias" role="button">Comprar</a></p>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-sm-3 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="imagen3.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Telefonos inalambricos</h3>
            <p>ahorro en cuano a cable alta duracion</p>
            <p>
			<a href="#" class="btn btn-default producto" precio="24" titulo="Telefonos inalambricos" role="button">Comprar</a></p>
          </div>
        </div>
      </div>
               <div class="col-xs-6 col-sm-3 col-md-3">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="imagen4.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>Telefonos ip </h3>
            <p>telefonos con configuracion ip de alto alcance</p>
            <p>
			<a href="#" class="btn btn-default producto" precio="61" titulo="Telefonos ip" role="button">Comprar</a></p>
          </div>
        </div>
      </div>
    </div>
            
             <footer id="pie" class="col-md-12">
                Gracias por su compra buen dia 
            </footer>   
        </section>
        </div>
    </div>
	<script src="minicart.js"></script>
	<script>
	  // configuración inicial del carrito 
	  paypal.minicart.render({
	  strings:{
	    button:'Pagar'
	   ,buttonAlt: "Total"
	   ,subtotal: 'Total:'
	   ,empty: 'No hay productos en el carrito'
	  }
	  });
	  // Eventos para agregar productos al carrito
	  
	   $('.producto').click(function(e){
	       e.stopPropagation();
		    paypal.minicart.cart.add({
			business: 'geovanni.ayalapea@gmail.com', // Cuenta paypal para recibir el dinero
			item_name: $(this).attr("titulo"),
			 amount: $(this).attr("precio"),
			 currency_code: 'MXN',
			
			});
	   });
	  
	</script>
</body>
</html>
