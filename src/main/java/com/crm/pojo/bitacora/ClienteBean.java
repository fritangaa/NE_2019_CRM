/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.bitacora;

/**
 *
 * @author Nesto
 */
public class ClienteBean {
    
    private String id_cliente;
    private String nombre;
    private String direccion;
    private String cp;
    private String email;

    public ClienteBean(String id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    
    public ClienteBean() {
    }

    public ClienteBean(String id_cliente, String nombre, String direccion, String cp, String email) {
        this.id_cliente = id_cliente;
        this.nombre = nombre;
        this.direccion = direccion;
        this.cp = cp;
        this.email = email;
    }

    public ClienteBean(String nombre, String direccion, String cp, String email) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.cp = cp;
        this.email = email;
    }
    
    

    public String getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(String id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCp() {
        return cp;
    }

    public void setCp(String cp) {
        this.cp = cp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}
