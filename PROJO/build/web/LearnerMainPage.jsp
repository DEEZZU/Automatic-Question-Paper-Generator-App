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
        <title>JSP Page</title>
        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href="template.css" type="text/css">
    </head>
    <body id="bg" background="BGL1.jpg" margin="auto" >
        <div class="container">
           <div class="header h1">
                <h1><span class="h1" style="color:#113B2A;font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
           </div>
           <div class="base">
                    <div class="welcome">
                       <h2><span>Welcome  Learner!!! </span></h2>                      
                    <span><a href="Learner.jsp"><input type="button" value="Let's see what you want to do" style="width:200px;"/>  </a><span> 
                    </div>
                    <div class="box">                        
                     <table border='0' cellpadding='0' cellspacing='20' valign="left" width='240px'style="width:240px;overflow:auto;text-align:center;margin:auto;">
                         <tr><td><a href="PracticeChoice.jsp"><input type="button" value="Practise"></a></td></tr>                                
                         <tr><td><a href="LearnerProfile.jsp"><input type="button" value="Profile"></a></td></tr>  
                                <tr><td> <input type="button" value="Grade">                             
                               <tr><td><input type="button" value="Doubts"></td></tr>
                               <tr><td><input type="button" value="Logout"></td></tr>
                    </table> <!--Table End-->
                   </div>  <!--Box End-->
           </div>  <!--Base end-->    
      </div> <!--Container End-->
  </body>
</html>
    
           </div>
        </div>
    </body> 
</html>