/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.inicio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import com.crm.db.Conexion;
import java.util.LinkedList;

/**
 *
 * @author Marii
 */
public class Querys {
    
    Connection conn;
    
    public Querys() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");
    }
    
    public void openDB() throws SQLException {
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/CRM", connProp);
    }
    
    public void closeDB() throws SQLException {
        conn.close();
    }
    
    public UsuarioBean consulta(String parametro) throws SQLException, ClassNotFoundException{
         
                 openDB();
                 UsuarioBean usu=new UsuarioBean();
                  PreparedStatement ps;
                    ps = conn.prepareStatement("select * from cliente WHERE id_cliente="+ parametro);
                    ResultSet rs= ps.executeQuery();
                    System.out.println(ps);
                    
                     while (rs.next()) {
                        
                        usu.setNombre_usu(rs.getString("nombre"));
                        usu.setCp_usu(rs.getString("cp"));
                        usu.setDireccion_usu(rs.getString("direccion"));
                        usu.setEmail_usu(rs.getString("email"));  
                    }
                    closeDB();
                  
        return usu;      
                  
        }
     public ResultSet consultaGeneral(String parametro) throws SQLException, ClassNotFoundException{
         
                 openDB();
                  PreparedStatement ps;
              
                     ps = conn.prepareStatement("select * from promocion");
                                                    ResultSet rs= ps.executeQuery();
                                                      System.out.println(ps);
                    
                                                       closeDB();
                  return rs;
               
        }
    
    
    
}
