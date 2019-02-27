/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function BuscarCliente(){
 
    var id=document.getElementById("idCliente").value;
  
 
    
 if(id == "" || id== null || id.length == 0 ) 
       {
        alert("ingrese el id del cliente en numeros");
        return false;
    }
    if (id<1){
        alert("ingrese un id que no sea cero ni negativo")
        
    } 

}

function vali_cliente(){
       
    var valor= document.getElementById('idcliente').value;
       
    }
    



function SoloNumeros(evt){
 if(window.event){//asignamos el valor de la tecla a keynum
  keynum = evt.keyCode; //IE
 }
 else{
  keynum = evt.which; //FF
 } 
 
 //comprobamos si se encuentra en el rango numérico y que teclas no recibirá.
 if((keynum > 47 && keynum < 58) || keynum == 8 || keynum == 13 || keynum == 6 ){
  return true;
 }
 else{
  return false;
 }
}


function categoria(){

    var categoria=document.getElementById("Categoriaa").selectedIndex;
         if( categoria == null || categoria==0) {
              alert("ingrese lo que desea buscar");
            return false;
          }
                    
             
}

function soloLetras(e){//Se utiliza para que el campo de texto solo acepte letras
       key = e.keyCode || e.which;
       tecla = String.fromCharCode(key).toLowerCase();
       letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";//Se define todo el abecedario que se quiere que se muestre
       especiales = "8-37-39-46";

       tecla_especial = false
       for(var i in especiales){
            if(key == especiales[i]){
                tecla_especial = true;
                break;
            }
        }

        if(letras.indexOf(tecla)==-1 && !tecla_especial){
            return false;
        }
    }
    
    
    
    function ClientePago(){
 var hoy=new Date();
    var nombre=document.getElementById("nombre").value;
  var tarjeta=document.getElementById("tarjeta").value;
 var fecha=document.getElementById("fecha1").value;
 var cvc=document.getElementById("cvc").value;
    
 if(nombre == "" || nombre== null || nombre.length == 0 ) 
       {
        alert("ingrese su nombre");
        return false;
    }
    
    if (tarjeta.length<16  || tarjeta.length>16){
        alert("ingrese un numero de tarjeta de 16 digitos valido")
     return false;   
    }
    
     if(fecha>hoy){
        alert("la fecha  no puede ser mayor ala fecha actual");
        return false;
    }

 if (cvc.length<3  || cvc.length>3){
        alert("ingrese un numero de 3 digitos valido")
     return false;   
    }

}