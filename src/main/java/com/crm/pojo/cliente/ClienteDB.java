/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.cliente;

import com.crm.clases.cliente.ProductoCliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClienteDB {
    
    

     public static LinkedList consultaProducto() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <ProductoCliente> l=new LinkedList<ProductoCliente>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:8485/CRM", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM producto limit 10");
            while (rs.next()) {
                ProductoCliente pc=new ProductoCliente();
                pc.setIdProducto(rs.getInt("id_producto"));
                pc.setNombre(rs.getString("nombre"));
                pc.setCategoria(rs.getString("categoria"));                
                pc.setPrecio(rs.getString("precio_unitario"));
                pc.setProveedor(rs.getString("idproveedor"));          
                l.add(pc);
            }                    
        conn.close();
        return l;
    }
     
     public void generarCompra(String campos, String tabla, String valores) throws SQLException, ClassNotFoundException {
        Connection conn;
        Class.forName("org.postgresql.Driver");
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:8485/CRM", connProp);
        
        PreparedStatement ps;
        ps=conn.prepareStatement("INSERT INTO "+tabla+" ("+campos+") VALUES ("+valores+")");
       ps.execute();
        conn.close();
    }
     
     public LinkedList consultaProductoEspecifico(String producto) throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <ProductoCliente> l=new LinkedList<ProductoCliente>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:8485/CRM", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM producto where nombre='"+producto+"' limit 10");
            while (rs.next()) {
                ProductoCliente pc=new ProductoCliente();
                pc.setIdProducto(rs.getInt("id_producto"));
                pc.setNombre(rs.getString("nombre"));
                pc.setCategoria(rs.getString("categoria"));                
                pc.setPrecio(rs.getString("precio_unitario"));
                pc.setProveedor(rs.getString("idproveedor"));          
                l.add(pc);
            }                    
        conn.close();
        return l;
    }
}
