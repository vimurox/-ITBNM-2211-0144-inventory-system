/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author saran
 */
public class DBInsert {
    ResultSet rs;
    Connection conn;
    Statement st;
    
    public void insertCategory(String name){
        String query = String.format("INSERT INTO  (name) VALUES ('%s')", name);
        try {
            st = conn.createStatement();
            rs = st.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(DBSearch.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
