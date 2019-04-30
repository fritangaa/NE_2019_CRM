/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crm.pojo.Usuario;

/**
 *
 * @author Marii
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.Properties;
import static org.apache.poi.hssf.usermodel.HeaderFooter.date;

public class Prodstock {
    Connection conn;

    public Prodstock() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");
    }
    
    public void openDB() throws SQLException {
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/BDSAPPW", connProp);
    }

    /**
     * Cierra la conexión con la base de datos
     *
     * @throws SQLException
     */
    public void closeDB() throws SQLException {
        conn.close();
    }

   public ResultSet ConsultaDev() throws SQLException, ClassNotFoundException {
        openDB();
        PreparedStatement ps;
       
           ps=conn.prepareStatement("select id_producto, nombre, cantidad, maximo, minimo \n"
                + "from producto LIMIT 6;");
        ResultSet rs = ps.executeQuery();
        
       closeDB();        
        return rs;
    }

    
}
