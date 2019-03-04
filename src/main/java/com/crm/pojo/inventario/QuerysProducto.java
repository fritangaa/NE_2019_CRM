/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.inventario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

/**
 *
 * @author Nesto
 */
public class QuerysProducto {
    
    Connection conn;
    
    public QuerysProducto() throws ClassNotFoundException, SQLException {
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
    
    public ResultSet consultaespe(String id_producto) throws SQLException, ClassNotFoundException{
         
                 openDB();
                  PreparedStatement ps;
                    if (id_producto != null) {
                                                    ps = conn.prepareStatement("select id_producto, nombre, categoria, precio_unitario, idproveedor from producto where id_producto='"+id_producto+"' limit 10;");
                                                    ResultSet rs= ps.executeQuery();
                                                      System.out.println(ps);
                    
                    closeDB();
                  return rs;
         }else {
                     ps = conn.prepareStatement("select * from producto limit 10"
                                                   );
                                                    ResultSet rs= ps.executeQuery();
                                                      System.out.println(ps);
                    
                                                       closeDB();
                  return rs;
                    
                    }
         
                    
        }
    
    public int eliminar(String codigo) throws SQLException, ClassNotFoundException{
         
            openDB();
            int valor=1;
            
                     PreparedStatement ps;
                    
                     ps = conn.prepareStatement("delete from producto where id_producto="+codigo+";");
                    valor = ps.executeUpdate();
        
            closeDB();
            return valor;
        }
    
}
