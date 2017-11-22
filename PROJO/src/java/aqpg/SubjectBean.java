/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;

/**
 *
 * @author ANKITA
 */
public class SubjectBean {
   
private String C_SID,Cname;  
  
public String getC_SID() {  
    return C_SID;  
}  
  
public void setC_SID(String C_SID) {  
    this.C_SID = C_SID;  
    
}
 
public String getCname() {  
    return Cname;  
}  
  
public void setCname(String Cname) {  
    this.Cname = Cname;  
}   

public String toString(){
return C_SID+" "+Cname;
}
}

