<%-- 
    Document   : PracticeChoice
    Created on : Oct 29, 2017, 6:52:56 PM
    Author     : ANKITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.SubjectDAO"%>
<%@page import="java.util.*" %>
<%@page import="aqpg.SubjectBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>Practice Questions</title>
    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href="template.css" type="text/css">
</head>
<body id="bg" background="BGL3.jpg" margin="auto" >
    <%
            ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
            List=SubjectDAO.displaySubject();
            int size;
            size=List.size();
            //out.println("hERE"+size);
    %>
    <div class="container">
        <div class="header h1">
            <h1><span class="h1" style="font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
                <span class="menu">                        
                <table border='0' cellpadding='0' cellspacing='15' valign="left" style=" color: overflow:auto;text-align:center;margin:auto;">
                    <tr><td><a href=""><input type="button" value="Practise" style="width:80px;"></a></td>                                
                        <td><a href=""><input type="button" value="Doubt" style="width:80px;"></a></td> 
                        <td><a href="InstructorModify.jsp"><input type="button" value="Modify" style="width:80px;"></a></td>
                        <td><a href=""><input type="Button" value="Grade" style="width:80px;"></a></td>
                        <td><input type="button" value="Logout" style="width:80px;"></td></tr>
                 </table> <!--Table End-->
                </span>
        </div>
        <div class="base">
           <div class="des1">                        
             <div class="des2">   
                <h4 class="font_1" style="margin:auto;"><span>Learner! Kindly enter name of courses you want to attempt</span></h4>                     
                
                <form action="ProcessChoice.jsp" >  
                   <table border='0' cellpadding='0' cellspacing='25px' style=" width:700px;overflow:auto;text-align:left;margin:auto;"> 
                                <tr><td>
                                    <%
                                      for(int i=0; i<size;i++){
                                    %>
                                    <span><input type="checkbox" name="subject" value="<%=(List.get(i).getCname())%>"/></span>
                                    <label style="font-size: 15px; font-weight: bold;"><%=List.get(i).getCname()%></label><br>
                                    <%}%></td></tr>                                        
                                <tr><td colspan="9"><input type="submit" value="SUBMIT"></td></tr>                                           
                   </table>
                </form>  
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>
