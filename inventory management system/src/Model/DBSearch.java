package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * DBSearch class for database search operations
 */
public class DBSearch {

    /**
     * Searches for an app user by email.
     *
     * @param email the email of the app user to search for
     * @return ResultSet containing the search results
     */
    public ResultSet searchAllAppUser(String email) {
        String query = "SELECT * FROM appuser WHERE email = ?";
        ResultSet rs = null;
        try {
            Connection con = ConnectionProvider.getCon();
            if (con != null) {
                PreparedStatement pst = con.prepareStatement(query);
                pst.setString(1, email);
                rs = pst.executeQuery();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBSearch.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
