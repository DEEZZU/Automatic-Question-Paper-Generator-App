<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.SubjectDAO"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.io.*" %>
<%@page import="aqpg.SubjectBean" %>
<%@page import="aqpg.QuestionDao"%> 
<%@page import="aqpg.QuestionBean"%>
<%@page import="aqpg.QuestionPaperBean"%>
<%@page import="aqpg.Conversion"%>
<%@page import="aqpg.FileCreation"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href="template.css" type="text/css">
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <%
            String title,time_required,total_marks,ans,level_easy,level_medium,level_hard,k,text="",answer="";
            String[] subjects;
            
            FileCreation fc=new FileCreation();
            subjects=request.getParameterValues("subject");
 /*           title=request.getParameter("Title");
            time_required=request.getParameter("Time_required");
            total_marks=request.getParameter("Total_Marks");
            level_easy=request.getParameter("level_easy");
            level_medium=request.getParameter("level_medium");
            level_hard=request.getParameter("level_hard");
            
            Conversion con=new Conversion();*/
            int i,j,ce=0,cm=0,ch=0,le,lm,lh,tm,num=0,e,m,h,lev,stat,count=0;
/*            le=con.convert(level_easy);
            lm=con.convert(level_medium);
            lh=con.convert(level_hard);
            tm=con.convert(total_marks);
            
            e=(le*tm)/100;
            m=(lm*tm)/100;
            h=(lh*tm)/100;
            
            out.println("YOU ENTERED"+"<br>");
            out.println(title);
            out.println(time_required);
            out.println(total_marks);
            out.println(le);
            out.println(lm);
            out.println(lh);
            out.println(tm);
            
             for(i=0;i<subjects.length;i++)
            {
                out.println(subjects[i]+"<br>");
            }*/
            String c;
            ArrayList<QuestionBean> QuesList=new ArrayList<QuestionBean>();
            ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
            ArrayList<String> List1=new ArrayList<String>();
            ArrayList<String> Ans=new ArrayList<String>();
            List=SubjectDAO.displaySubject();
            int size;
            size=List.size();
            
            for(i=0;i<size;i++){
                for(j=0;j<subjects.length;j++){
                 if((subjects[j]).equals(List.get(i).getCname())){
                   c=List.get(i).getC_SID();
                   List1.add(c);
              }}
            }  
            
 //           for(i=0;i<List1.size();i++)                
  //          out.println(List1.get(i)+"<br>");
            
            QuesList=QuestionDao.ReterieveQuestion(List1);
            
//            for(i=0;i<QuesList.size();i++) 
//             out.println(QuesList.get(i).getsno()+"<br>");
            
 //           Collections.shuffle(QuesList);
            
//            out.println("<br><br><br>"+"nAfter Shuffling");
            
//            for(i=0;i<QuesList.size();i++) 
//             out.println(QuesList.get(i).getsno()+"<br><br>");
            
            %>
            <div class="container">
                <div class="paper">  
                    <div class="qs">  
                       <span class="info" style="left:300px;">Question Paper</span><br><br>
                        <span class="info" style="float:left;">Total Marks: 20</span>
                        <span class="info" style="float:right;">Total Time: 20</span>                            
                   <br><br><br><br><br>
               
                   <form action="" > 
                    <% for(i=1;i<=5;i++){%>             
                        <table  border='0' cellpadding='0' cellspacing='10px' style="width:700px;overflow:auto;text-align:left;margin:auto;">                                                      
                            <tr><td><span><%=i +" " %><%=(QuesList.get(i).getques_stmt())%></span></td></tr>
                           <tr><td><span>a. <%=(QuesList.get(i).getoption_1())%></span></td></tr>
                           <tr><td><span>b. <%=(QuesList.get(i).getoption_2())%></span></td></tr>
                           <tr><td><span>c. <%=(QuesList.get(i).getoption_3())%></span></td></tr>
                           <tr><td><span>d. <%=(QuesList.get(i).getoption_4())%></span></td></tr>
                           <tr><td style=" border-bottom:1.5px solid darkcyan"><input type="text" name="answer" placeholder="Submit Option" style="background:aliceblue ;border:none;"></td></tr>         
                        </table>
                       <%Ans.add(QuesList.get(i).getans());}%>
                        <br>
                        <span class="info" style="clear:both;left:300px;"><input type="submit" value="Submit" style="background:darkcyan;border:none;"></span>                        
                    </form> 
                        <% 
                            try{
                                for(i=1;i<=5;i++){
                                   ans=request.getParameter(answer);
                                   if(ans.equals(QuesList.get(i).getans())){
                                   count++;
                                   }
                                }
                           }
                           catch(Exception ex){} 
     
                                                
                        %>
                        
                        
                    </div><!--qs End-->          
                 </div> <!--Paper End-->             
                </div> <!--Container End-->   
    </body>
</html>

