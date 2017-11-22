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
    
public static int Insertion(LoginBean bean) throws SQLException{  
ResultSet rs;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("insert into user_2 values(?,?,?)");  
  
ps.setString(1, bean.getLoginName());  
ps.setString(2, bean.getPass());  
ps.setString(3, bean.getType());   

ps.execute();                
}
catch(Exception e){}
status=1;
return status;
}
}