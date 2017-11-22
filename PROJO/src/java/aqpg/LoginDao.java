package aqpg;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginDao {
    
public static int validate(LoginBean bean) throws SQLException{  
ResultSet rs = null;    
boolean records=false;
int status=0;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("Select * from user_2 where login_name=? and pass=? and type=?");  
  
ps.setString(1, bean.getLoginName());  
ps.setString(2, bean.getPass());  
ps.setString(3, bean.getType());   

rs=ps.executeQuery();                
}
catch(Exception e){}  
if(rs!=null && rs.next()!=false)
    status=1;
/*finally {
        if (rs != null) {
        try {
            
            String loginName;
            String pass;
            String type;
            records=rs.next();
           
            do{
                loginName=rs.getString(1);
                if(loginName==bean.getLoginName()){
                    pass=rs.getString(2);
                    type=rs.getString(3);
                   System.out.println(loginName+" "+pass+" "+ type +" ");
                    if(pass==bean.getPass() && type==bean.getType())
                    {
                        status=1;
                        
                    }
                    break;
                }
            }while(rs.next());
            } 
        catch (SQLException ex) {
                Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        rs.close();
        } 
        
        rs = null;
        }*/

  
  return status;
}
}