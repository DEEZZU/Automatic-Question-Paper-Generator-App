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
public class AddCourseDao {
    
public static int Insertion(CourseBean bean) throws SQLException{  
ResultSet rs;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("insert into courses values(?,?)");  
  
ps.setString(1, bean.getc_sid());  
ps.setString(2, bean.getcname());  
   
ps.execute();                
}
catch(Exception e){}
status=1;
return status;
}
}
