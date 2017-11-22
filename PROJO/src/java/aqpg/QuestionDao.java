/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
/**
 *
 * @author Shivani Tiwary
 */
public class QuestionDao {
 public static ArrayList<QuestionBean> ReterieveQuestion(ArrayList<String> List) throws SQLException{  

    ArrayList<QuestionBean> QuesList=new ArrayList<QuestionBean>();
    ResultSet rs = null;    
    boolean records=false;
    int status=0;
    int i;
    String c;
    
    try{
    for(i=0;i<List.size();i++){
       try{  
          Connection con=ConnectionProvider.getCon();         
          c=List.get(i);
          PreparedStatement ps=con.prepareStatement("Select * from ques_2 where c_sid=?");
          ps.setString(1,c);
          rs=ps.executeQuery(); 
         }
      catch(Exception e){}  
           if (rs != null) {
             try {
                records=rs.next();
                do{
                    QuestionBean bean=new QuestionBean();
                    bean.setsno(rs.getString(1));
                    bean.setques_stmt(rs.getString(2));
                    bean.setans(rs.getString(3));
                    bean.setc_sid(rs.getString(4));
                    bean.setlevel(rs.getString(5));
                    bean.setoption_1(rs.getString(6));
                    bean.setoption_2(rs.getString(7));
                    bean.setoption_3(rs.getString(8));
                    bean.setoption_4(rs.getString(9));
                    QuesList.add(bean);
                }while(rs.next());
               }
            catch (SQLException ex) { }           
            }                       
           }
    }
    catch(Exception e1){}
    rs.close();
    rs = null; 
    return QuesList;
 }      
}
