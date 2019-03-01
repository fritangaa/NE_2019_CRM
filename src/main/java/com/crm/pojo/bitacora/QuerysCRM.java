/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.bitacora;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import com.crm.db.Conexion;

/**
 *
 * @author Nesto
 */
public class QuerysCRM {
    
     Connection conn;
    
    public QuerysCRM() throws ClassNotFoundException, SQLException {
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
    
    public ResultSet consultaGeneral(String parametro) throws SQLException, ClassNotFoundException{
         
                 openDB();
                  PreparedStatement ps;
                    if (parametro != null) {
                                                    ps = conn.prepareStatement("select id_bc, fecha, actividad, idcliente, idusuario from bitacora_de_clientes where idcliente='"+parametro+"' ;");
                                                    ResultSet rs= ps.executeQuery();
                                                      System.out.println(ps);
                    
                    closeDB();
                  return rs;
         }else {
                     ps = conn.prepareStatement("select * from bitacora_de_clientes"
                                                   );
                                                    ResultSet rs= ps.executeQuery();
                                                      System.out.println(ps);
                    
                                                       closeDB();
                  return rs;
                    
                    }
                    
                    
          
                  
        }
    
    public boolean agregarComentario(String idbitacora, String idusuario, String idcliente, String fecha, String actividad) throws SQLException, ClassNotFoundException{
         boolean agregado=false;
         
                 openDB();
                 try{
                 if(conn!=null){
                         PreparedStatement ps;
                    
                     ps = conn.prepareStatement("INSERT INTO bitacora_de_clientes(id_bc, fecha, actividad, idcliente, idusuario) "
                                       + " VALUES ('"+idbitacora+"','"+fecha+"','"+actividad+"',"+idcliente+","+idusuario+");");
                    ResultSet rs= ps.executeQuery();
                     agregado=true;
                    }
                          
                    closeDB();
                      } catch (SQLException e) {
                        agregado=false;
                        e.printStackTrace();
                    }
                return agregado; 
        }
    
}
