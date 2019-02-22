function regreso(){
   window.location.hash="no-back-button";
   window.location.hash="Again-No-back-button";
   window.onhashchange=function(){window.location.hash="no-back-button";};
}

function principal(){
    location="../Login.jsp";
}


function Ingresar(){
 
    var usuario=document.getElementById("user").value;
  var contraseña=document.getElementById("password").value;
 
    
 if(usuario == "" || usuario== null || usuario.length == 0 ) 
       {
        alert("ingrese el usuario es requerido para ingresar");
        return false;
    }
    
    if(contraseña == "" || contraseña== null || contraseña.length == 0 ) 
       {
        alert("ingrese la contraseña de su usuario es requerido para ingresar");
        return false;
    }

}
