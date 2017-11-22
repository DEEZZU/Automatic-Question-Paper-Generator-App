<%-- 
    Document   : ViewLearner
    Created on : 21 Nov, 2017, 7:28:14 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.ViewDao" %>

<html>
    <head>
        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href="template.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Learner</title>
    </head>
    <jsp:useBean id="obj" class="aqpg.ViewBean"/>
    <jsp:setProperty property="type" value="L" name="obj" />
    <jsp:setProperty property="loginName" value="${LoginID}" name="obj"/>
        <%
            int status = ViewDao.retrieve(obj);   
        %>
    <body id="bg" background="BG3.jpg" margin="auto" >   
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
                <br><h4 class="font_1" style="margin:auto;"><span>Learner! View Your Details</span></h4><br>                     
                
                   <table  border='0' cellpadding='0' cellspacing='25px' style=" width:700px;overflow:auto;text-align:center;margin:auto;">
                       <tr><td><label for="fname" style="font-size: 16px; font-weight: bold;">First Name :</label></td>
                            <td class="font_2"><jsp:getProperty property="fname" name="obj"/></td></tr>                                
                       <tr><td><label for="fname" style="font-size:16px; font-weight: bold;">Middle Name :</label></td>
                            <td class="font_2"><jsp:getProperty property="sname" name="obj" /></td></tr>                  
                       <tr><td><label for="fname" style="font-size: 16px; font-weight: bold;">Last Name :</label></td>
                            <td class="font_2"><jsp:getProperty property="lname" name="obj"/></td></tr>                                
                       <tr><td><label for="fname" style="font-size: 16px; font-weight: bold;">Address:</label></td>
                            <td class="font_2"><jsp:getProperty property="add" name="obj"/></td></tr>                               
                       <tr><td><label for="fname" style="font-size: 16px; font-weight: bold;">Contact Number :</label></td>
                            <td class="font_2"><jsp:getProperty property="cno" name="obj"/></td></tr>
                       <tr><td><label for="fname" style="font-size: 16px; font-weight: bold;">Sex :</label></td>
                            <td class="font_2">
                                <% 
                                   String sex=obj.getSex();
                                            if(sex.equals("F"))
                                                out.println("Female");
                                            else
                                                out.println("Male");
                                %>         
                        </td></tr>      
                   </table>                            
                  
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
               
                    
                    
                    
       
                   
    </body>
</html>

