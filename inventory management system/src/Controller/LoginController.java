package Controller;

import Model.DBSearch;
import View.Home;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 * LoginController class to handle login operations
 */
public class LoginController {

  
    public void superAdminLogin(String email, String password, JFrame frame) {
        login(email, password, frame, "SuperAdmin");
    }

   
    public void adminLogin(String email, String password, JFrame frame) {
        login(email, password, frame, "Admin");
    }

   
    private void login(String email, String password, JFrame frame, String role) {
        if (email.equals("") || password.equals("")) {
            JOptionPane.showMessageDialog(null, "Empty fields", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        try (ResultSet rs = new DBSearch().searchAllAppUser(email)) {
            String dbEmail = "", dbPassword = "", status = "", userRole = "";

            if (rs != null && rs.next()) {
                dbEmail = rs.getString("email");
                dbPassword = rs.getString("password");
                status = rs.getString("status");
                userRole = rs.getString("userRole");
            }

            if (email.equals(dbEmail) && password.equals(dbPassword) && "Active".equals(status) && role.equals(userRole)) {
                new Home(rs.getString("userRole")).setVisible(true);
                JOptionPane.showMessageDialog(null, "Logged in as " + dbEmail, "Successful", JOptionPane.INFORMATION_MESSAGE);
              
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Database error", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}
