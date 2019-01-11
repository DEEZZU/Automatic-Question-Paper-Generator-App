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

public class ViewDao {
    
    public static int retrieve(ViewBean bean) throws SQLException{  
    
        ResultSet rs = null;    
        boolean records=false;
        int status=0;
        try{  
            
            Connection con=ConnectionProvider.getCon();    
            PreparedStatement ps=con.prepareStatement("Select * from user_1 where login_name=?");  
  
            ps.setString(1, bean.getLoginName());
            rs=ps.executeQuery();                
            
            
            }
            catch(Exception e){}  
            if(rs!=null && rs.next()!=false)
                status=1;
            if (rs != null) {
                try{
                        do{
                            bean.setLoginName(rs.getString(1));
                            bean.setFname(rs.getString(2));
                            bean.setSname(rs.getString(3));
                            bean.setLname(rs.getString(4));
                            bean.setAdd(rs.getString(5));
                            bean.setCno(rs.getInt(6));
                            bean.setSex(rs.getString(7));
                            
                        }while(rs.next());
                        } 
                    catch (SQLException ex) {
                           // Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    rs.close();
                } 
                rs = null;
                return status;
            }
}
