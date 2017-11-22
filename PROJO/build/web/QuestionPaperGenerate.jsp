<%-- 
    Document   : QuestionPaperGenerate
    Created on : 18 Nov, 2017, 5:54:05 PM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.SubjectDAO"%>
<%@page import="java.util.*" %>
<%@page import="aqpg.SubjectBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Question Paper Generate</title>
    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href="template.css" type="text/css">
</head>
<body id="bg" background="BGI2.jpg" margin="auto" >
    <%
            ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
            List=SubjectDAO
                    .displaySubject();
            int size;
            size=List.size();
            //out.println("hERE"+size);
    %>
    <div class="container">
        <div class="header h1">
            <h1><span class="h1" style="font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
                <span class="menu">                        
                <table border='0' cellpadding='0' cellspacing='15' valign="left" style="overflow:auto;text-align:center;margin:auto;">
                    <tr><td><a href=""><input type="button" value="Question Paper Generate" style="width:220px;"></a></td>                                
                        <td><a href="Profile.jsp"><input type="button" value="Profile" style="width:80px;"></a></td> 
                        <td><a href="InstructorModify.jsp"><input type="button" value="Modify" style="width:80px;"></a></td>
                        <td><a href=""><input type="button" value="Doubt Request" style="width:130px;"></a></td>
                        <td><input type="button" value="Logout" style="width:80px;"></td></tr>
                 </table> <!--Table End-->
                </span>
        </div>
        <div class="base">
           <div class="des1">                        
             <div class="des2">   
                <h4 class="font_1" style="margin:auto;"><span>Instructor! Kindly enter the details of question paper you want to generate</span></h4>                     
                <form action="ProcessPaper.jsp" >                    
                   <table  border='0' cellpadding='0' cellspacing='25px' style=" width:700px;overflow:auto;text-align:center;margin:auto;">
                                <tr><td><input type="text" id="TI" name="Title" placeholder="Title"></td>
                                    <td><input type="text" id="TR" name="Time_required" placeholder="Time Required"></td> 
                                    <td><input type="text" id="TM" name="Total_Marks" placeholder="Total Marks"></td></tr>
                                <tr><td><input type="text" id="LE" name="level_easy" placeholder="Level Easy(In %)"></td>
                                    <td><input type="text" id="LM" name="level_medium" placeholder="Level Medium(In %)"></td> 
                                    <td><input type="text" id="LH" name="level_hard" placeholder="Level Hard(In %)"></td></tr>
                   </table>
                               
                   <table border='0' cellpadding='0' cellspacing='25px' style=" width:700px;overflow:auto;text-align:center;margin:auto;"> 
                                <tr><td>
                                    <%
                                      for(int i=0; i<size;i++){
                                    %>
                                    <td><span><input type="checkbox" name="subject" value="<%=(List.get(i).getCname())%>"/><br></span>
                                    <label style="font-size: 15px; font-weight: bold;"><%=List.get(i).getCname()%></label>
                                    </td><%}%></td></tr>                                        
                                <tr><td colspan="9"><input type="submit" value="SUBMIT"></td></tr>                                           
                   </table>
                </form>  
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>
