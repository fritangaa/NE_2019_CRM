<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Standard Meta -->
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <title>CRM</title>
        <link href="Recursos/css/estilos.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap -->
        <link href="Recursos/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="Recursos/Bootstrap/include/jquery-3.3.1.min.js" type="text/javascript"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="Recursos/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Recursos/Bootstrap/include/popper.min.js" type="text/javascript"></script>
        <script src="../Recursos/js/index.js" type="text/javascript"></script>
    </head>
    <body >
        <div class="container">
            <div class="row bg-primary " style="width:100%; padding: 10px; margin-top: 10px;">
                <h1 class="text-center text-white ">CRM</h2>
            </div>
            <div class="row" style="width:100%; padding: 10px; margin-top: 10px;">
                <div  class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <h2 class="text-center">Bienvenido</h2>
                </div>    
                <div  class="col-lg-4 col-md-6 col-sm-12 col-xs-12" style="background-color: #EDEDED;">
                    <form class="form-horizontal" role="form" method="POST" action="Login" onsubmit="return Ingresar()">  
                         <div class="row d-flex justify-content-center">
                             <img src="./Recursos/img/avatar.png" class="img-circle" width="204" height="204" />
                         </div>
                        <div class="row d-flex justify-content-center">
                            <div class="form-group has-danger">
                                <label for="usuario">Usuario</label>
                                <div class="input-group">
                                    <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
                                    <input type="text" name="user" class="form-control" id="user"
                                           placeholder="ingrese usuario" required autofocus/>
                                </div>
                            </div>                
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <div class="input-group ">
                                    <div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
                                    <input type="password" name="password" class="form-control" id="password"
                                           placeholder="Password" required>
                                </div>
                            </div>
                        </div>
                         <div class="row d-flex justify-content-center">
                            <div class="form-group">
                               <span class="txt1">
							¿Lo olvidaste?
						</span>

						<a href="#" class="txt2">
                                                    Usuario / Contrase&ntilde;a?
						</a>
                            </div>
                        </div>

                        <div class="row d-flex justify-content-center" style="padding-top: 1rem">
                            <div style="padding: 5px;">
                                <button type="reset" class="btn btn-info"><i class="fa fa-sign-in"></i> Cancelar</button>                    
                            </div>
                            <div style="padding: 5px;">
                                <button type="submit" href="#" class="btn btn-success"><i class="fa fa-sign-in"></i> Login</button>                    
                            </div>
                        </div>
                    </form>
                </div>    
            </div>


        </div>
    </body>
</html>