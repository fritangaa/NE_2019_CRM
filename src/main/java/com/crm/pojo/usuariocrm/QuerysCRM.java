/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.usuariocrm;

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
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/BDSAPPW", connProp);
    }
   
    public void closeDB() throws SQLException {
        conn.close();
    }
    
    
    public boolean agregarMiembro(String id_emp, String nombre_emp, String area_emp, String cargo_emp) throws SQLException, ClassNotFoundException{
         boolean agregado=false;
         
                 openDB();
                 try{
                 if(conn!=null){
                         PreparedStatement ps;
                    
                     ps = conn.prepareStatement("INSERT INTO empleado(id_emp, nombre_emp, area_emp, cargo_emp) "
                                       + " VALUES ("+id_emp+",'"+nombre_emp+"','"+area_emp+"','"+cargo_emp+"');");
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
    
    public boolean agregarAfiliacion(String id_afil, String id_emp, String id_promocion, String descripcion) throws SQLException, ClassNotFoundException{
         boolean agregado=false;
         
                 openDB();
                 try{
                 if(conn!=null){
                         PreparedStatement ps;
                    
                     ps = conn.prepareStatement("INSERT INTO afiliaciones(id_afil, id_emp, id_promocion, descripcion) "
                                       + " VALUES ("+id_afil+","+id_emp+","+id_promocion+",'"+descripcion+"');");
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
    
    
    public ResultSet consultaMiembros() throws SQLException, ClassNotFoundException{
         
                 openDB();
                  PreparedStatement ps;
                    
                     ps = conn.prepareStatement("select id_emp, nombre_emp, area_emp, cargo_emp from empleado;");
                    ResultSet rs= ps.executeQuery();
          
                    System.out.println(ps);
                    
                    closeDB();
                  return rs;
        }
    
    
    public ResultSet consultaAfil() throws SQLException, ClassNotFoundException{
         
                 openDB();
                  PreparedStatement ps;
                    
                     ps = conn.prepareStatement("select id_afil, id_emp, id_promocion, descripcion from afiliaciones");
                    ResultSet rs= ps.executeQuery();
          
                    System.out.println(ps);
                    
                    closeDB();
                  return rs;
        }
}
