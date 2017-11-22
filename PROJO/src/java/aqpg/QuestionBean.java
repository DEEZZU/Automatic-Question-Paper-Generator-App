/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aqpg;

/**
 *
 * @author Shivani Tiwary
 */
public class QuestionBean {
  
    private String sno, c_sid,ques_stmt,option_1,option_2,option_3,option_4,ans,level;  
  
public String getsno() {  
    return sno;  
}  
  
public void setsno(String sno) {  
    this.sno = sno;  
    
}  
  
public String getc_sid() {  
    return c_sid;  
}  
  
public void setc_sid(String c_sid) {  
    this.c_sid = c_sid;  
}  
  
public String getques_stmt() {  
    return ques_stmt;  
}  
  
public void setques_stmt(String ques_stmt) {  
    this.ques_stmt = ques_stmt;  
}   
 
public String getoption_1() {  
    return option_1;  
}  
  
public void setoption_1(String option_1) {  
    this.option_1 = option_1;  
}  

public String getoption_2() {  
    return option_2;  
}  
  
public void setoption_2(String option_2) {  
    this.option_2 = option_2;  
}  

public String getoption_3() {  
    return option_3;  
}  
  
public void setoption_3(String option_3) {  
    this.option_3 = option_3;  
}  

public String getoption_4() {  
    return option_4;  
}  
  
public void setoption_4(String option_4) {  
    this.option_4 = option_4;  
}  

public String getans() {  
    return ans;  
}  
  
public void setans(String ans) {  
    this.ans = ans;  
}  

public String getlevel() {  
    return level;  
}  
  
public void setlevel(String level) {  
    this.level = level;  
}  

public String toString(){
return sno+" "+c_sid+" "+ques_stmt+" "+option_1+" "+option_2+" "+option_3+" "+option_4+" "+ans+" "+level;
}
}
