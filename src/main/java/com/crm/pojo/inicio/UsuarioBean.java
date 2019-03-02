/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.inicio;

/**
 *
 * @author Marii
 */
public class UsuarioBean {
    
    private String id_usu;
     private String nombre_usu;
    private String direccion_usu;
    private String cp_usu;
    private String email_usu; 

     public void setId_usu(String id_usu) {
        this.id_usu = id_usu;
    }

    public void setNombre_usu(String nombre_usu) {
        this.nombre_usu = nombre_usu;
    }

    public void setDireccion_usu(String direccion_usu) {
        this.direccion_usu = direccion_usu;
    }

    public void setCp_usu(String cp_usu) {
        this.cp_usu = cp_usu;
    }

    public void setEmail_usu(String email_usu) {
        this.email_usu = email_usu;
    }

    public String getId_usu() {
        return id_usu;
    }

    public String getNombre_usu() {
        return nombre_usu;
    }

    public String getDireccion_usu() {
        return direccion_usu;
    }

    public String getCp_usu() {
        return cp_usu;
    }

    public String getEmail_usu() {
        return email_usu;
    }

    
      
}
