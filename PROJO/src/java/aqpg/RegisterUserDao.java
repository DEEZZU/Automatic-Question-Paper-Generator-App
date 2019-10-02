/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shivani Tiwary
 */
public class RegisterUserDao {
    
    public static boolean addNewUser(LoginBean bean) throws SQLException{  
        private ResultSet rs;    
        private boolean records = false;
        private boolean isInsertionSuccess = false;
        private static final Logger LOGGER = Logger.getLogger(RegisterUserDao.class.getName());
        try {  
            Connection con=ConnectionProvider.getCon();  

            PreparedStatement ps=con.prepareStatement("insert into user_2 values(?,?,?)");  
            ps.setString(1, bean.getLoginName());  
            ps.setString(2, bean.getPass());  
            ps.setString(3, bean.getType());   

            ps.execute();                
        }
        catch(Exception e){
            LOGGER.log(Level.SEVERE, "Exception occur", ex);
        }
        isInsertionSuccess = true;
        return isInsertionSuccess;
    }
}
