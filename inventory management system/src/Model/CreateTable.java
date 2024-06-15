package Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 * Example class to create database tables using JDBC.
 * 
 * Note: Uncomment the relevant lines for table creation and data insertion as needed.
 * Ensure you have appropriate permissions and configurations for database access.
 */
public class CreateTable {

    public static void main(String[] args) {
        Connection con = null;
        Statement st = null;
        try {
            con = ConnectionProvider.getCon();
            st = con.createStatement();

            // Create appuser table
            // st.executeUpdate("create table appuser(appuser_pk int AUTO_INCREMENT primary key, userRole varchar(50), name varchar(200), mobileNumber varchar(50), email varchar(200), password varchar(50), address varchar(200), status varchar(50))");

            // Insert into appuser table
            // st.executeUpdate("insert into appuser(userRole, name, mobileNumber, email, password, address, status) values('SuperAdmin', 'SuperAdmin', '07745655', 'superadmin@testemail.com', 'admin', 'srilanka', 'Active')");

            // Create category table
            // st.executeUpdate("create table category(category_pk int AUTO_INCREMENT primary key, name varchar(150))");

            // Create product table
            // st.executeUpdate("create table product(product_pk int AUTO_INCREMENT primary key, name varchar(150), quantity int, price int, description varchar(500), category_fk int)");

            // Create customer table
            // st.executeUpdate("create table customer(customer_pk int AUTO_INCREMENT primary key, name varchar(200), mobileNumber varchar(70), email varchar(300))");

            // Create orderDetails table
            st.executeUpdate("create table orderDetails(order_pk int AUTO_INCREMENT primary key, orderId varchar(200), customer_fk int, orderDate varchar(200), totalPaid int)");

            JOptionPane.showMessageDialog(null, "Tables created successfully");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
        } finally {
            try {
                if (st != null) {
                    st.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(null, "Error closing resources: " + e.getMessage());
            }
        }
    }
}
