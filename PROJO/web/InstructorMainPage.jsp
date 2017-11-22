<%-- 
    Document   : admin
    Created on : Oct 13, 2017, 4:14:54 AM
    Author     : SHIVANI TIWARY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instructor</title>
        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href="template.css" type="text/css">
    </head>
    <body id="bg" background="BGI1.jpg" margin="auto" >
        <div class="container">
           <div class="header h1">
                <h1><span class="h1" style="color:#113B2A; font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
           </div>
           <div class="base">
                    <div class="welcome">
                       <h2><span>Welcome  Instructor!!! </span></h2>  
                    <span><a href="Instructor.jsp"><input type="button" value="Let's see what you want to do" style="width:250px;"></a><span> 
                    </div>
           
           <div class="box">                        
               <table border='0' cellpadding='0' cellspacing='20' valign="left" width='240px'style="width:240px;overflow:auto;text-align:center;margin:auto;">
                                <tr><td><a href="QuestionPaperGenerate.jsp"><input type="button" value="Question Paper Generate"></td></tr>                                
                                <tr><td><a href="Profile.jsp"><input type="button" value="Profile"></a></td></tr>  
                            <!--    <tr><td><select id="sel" name="Type" value="Add/Delete" style="width:180px;color:#ffffff;font-weight:bold;">ADD/DELETE 
                                        <option value="User">Users</option>
                                        <option value="Course">Course</option>
                                        <option value="Options">Options</option>
                                        </select></td></tr>   -->                             
                               <tr><td><a href="InstructorModify.jsp"><input type="button" value="Modify"></a></td></tr>
                               <tr><td><input type="button" value="Doubt Request"></td></tr>
                               <tr><td><input type="button" value="Logout"></td></tr>
                    </table> <!--Table End-->
         </div>  <!--Box End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>    
          