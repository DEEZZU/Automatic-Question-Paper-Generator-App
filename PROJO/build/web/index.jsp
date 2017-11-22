<%-- 
    Document   : index
    Created on : Oct 9, 2017, 5:21:03 AM
    Author     : SHIVANI TIWARY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
        <link rel='stylesheet' href="template.css" type="text/css">
        <title>Main Page</title>
    </head>
    <body id="bg" background="BGI.jpg" margin="auto" >
    <div class="container">
        <div class="header h1" style="left:50 px">
            <h1><span class="h1" style="color:#113B2A;font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
        </div> 
        <div class="base">   
          <div  class="register" >  
             <form action="loginprocess.jsp" >
                <table  border='0' cellpadding='0' cellspacing='15' style=" width:300px;overflow:auto;text-align:center;margin:auto;top:20px;">
                                <tr><td><label for="fname" style="font-size: 15px; font-weight: bold;">LOGIN ID</label></td>
                                    <td><input type="text" id="em" name="loginName"></td></tr>
                                <tr><td><label for="password" style="font-size: 15px; font-weight: bold;">PASSWORD</font></label></td>
                                    <td><input type="password" id="pass" name="pass"></td></tr>
                                <tr><td><label for="course" style="font-size: 15px; font-weight: bold;">USER TYPE</font></label></td>
                                    <td><select id="cou" name="type">
                                            <option value="A">Admin</option>
                                            <option value="I">Instructor</option>
                                            <option value="L">Learner</option>
                                         </select></td></tr>                                                            
                                <tr><td colspan="2"><input type="submit" value="SUBMIT"></td></tr>                                           
                </table>                            
             </form>                                  
          </div><!--Registeration End-->   
        </div><!--Base End-->                             
     </div><!--Container End-->                                       
   </body>
</html>