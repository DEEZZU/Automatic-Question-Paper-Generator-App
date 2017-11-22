<%-- 
    Document   : InstructorModify
    Created on : 30 Oct, 2017, 1:02:53 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Page Title</title>
    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href="template.css" type="text/css">
</head>
<body id="bg" background="BGI2.jpg" margin="auto" >
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
                <br><h4 class="font_1" style="margin:auto;"><span>Hey Instructor!!!</span></h4>
                <br><h4 class="font_1" style="margin:auto;"><span>What do you want to modify?</span></h4>                
                   <table  border='0' cellpadding='0' cellspacing='35px' style=" width:500px;overflow:auto;text-align:center;margin:auto;">
                       <tr><td><a href="Profile.jsp"><input type="button" value="Your Profile" style="color:#000000;"></a></td></tr><br>
                                <tr><td><input type="button" value="Course" style="color:#000000;"></td></tr><br>
                                <tr><td><input type="button" value="Question" style="color:#000000;"></td></tr>                                          
                   </table>                             
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>
