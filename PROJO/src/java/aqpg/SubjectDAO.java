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
import java.util.*;

public class SubjectDAO {
    
    public static ArrayList<SubjectBean> displaySubject() throws SQLException{  

    ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
    ResultSet rs = null;    
    boolean records=false;
    int status=0;
    try{  
    Connection con=ConnectionProvider.getCon();  

    PreparedStatement ps=con.prepareStatement("Select * from courses");  
    rs=ps.executeQuery();         
    }
    catch(Exception e){}  
//    if(rs!=null && rs.next()!=false)
//        status=1;
//    finally {
            if (rs != null) {
             try {
                records=rs.next();

                do{
                    SubjectBean bean=new SubjectBean();
                    bean.setC_SID(rs.getString(1));
                    bean.setCname(rs.getString(2));
                    List.add(bean);
                }while(rs.next());
            }
            catch (SQLException ex) { }
            rs.close();
            } 
            rs = null; 
      return List;
    } 
}
