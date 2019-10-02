package aqpg;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginDao {
    
/**
* Returns whether a user exist in our system or not
* @param bean
* @return int : a status code indicating presence of the user
*/
public static boolean validate(LoginBean bean) throws SQLException {   
    private ResultSet rs = null;    
    private boolean records = false;
    private boolean isValidUser = false;
    private static final Logger LOGGER = Logger.getLogger(LoginDao.class.getName());
    
    try { 
            Connection con=ConnectionProvider.getCon();             
            PreparedStatement ps=con.prepareStatement("Select * from user_2 where login_name=? and pass=? and type=?");  
            ps.setString(1, bean.getLoginName());  
            ps.setString(2, bean.getPass());  
            ps.setString(3, bean.getType());   
            rs=ps.executeQuery();                
        } catch(Exception e){
            LOGGER.log(Level.SEVERE, "Exception occured", ex);
        }  
    
    if (rs != null && rs.next() != false) {
        isValidUser = true;
    }
    return isValidUser;
    }
}
