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
public class DeleteQuestionDao {
 public static int Deletion(QuestionBean bean) throws SQLException{  
ResultSet rs;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("Delete from ques_2 where sno=?");    
ps.setString(1, bean.getsno());   
ps.executeUpdate();                
}
catch(Exception e){}
status=1;
return status;
}   
}
