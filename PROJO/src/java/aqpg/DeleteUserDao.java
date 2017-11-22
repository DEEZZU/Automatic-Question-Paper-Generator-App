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
public class DeleteUserDao {
    
public static int Deletion(LoginBean bean) throws SQLException{  
ResultSet rs;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("Delete from user_2 where login_name=?"); 
ps.setString(1,bean.getLoginName());
ps.executeUpdate();   
//ps.executeUpdate(); 
//con.close();
}
catch(Exception e){}
status=1;
return status;
}    
}

