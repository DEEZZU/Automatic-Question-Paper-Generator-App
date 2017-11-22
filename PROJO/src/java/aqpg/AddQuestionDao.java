/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Shivani Tiwary
 */
public class AddQuestionDao {   
public static int Insertion(QuestionBean bean) throws SQLException{  
ResultSet rs;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("insert into ques_2 values(?,?,?,?,?,?,?,?,?)");  

ps.setString(1, bean.getsno());  
ps.setString(2, bean.getques_stmt());
ps.setString(3, bean.getans());
ps.setString(4, bean.getc_sid());
ps.setString(5, bean.getlevel());  
ps.setString(6, bean.getoption_1());
ps.setString(7, bean.getoption_2());  
ps.setString(8, bean.getoption_3());
ps.setString(9, bean.getoption_4());  
   
ps.execute();                
}
catch(Exception e){}
status=1;
return status;
}
}
