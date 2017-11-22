<%-- 
    Document   : LearnerProfile
    Created on : 21 Nov, 2017, 7:21:46 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Learner Profile</title>
    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href="template.css" type="text/css">
</head>
<body id="bg" background="BGL3.jpg" margin="auto" >
    <div class="container">
        <div class="header h1">
            <h1><span class="h1" style="font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
                <span class="menu">                        
                <table border='0' cellpadding='0' cellspacing='15' valign="left" style=" color: overflow:auto;text-align:center;margin:auto;">
                    <tr><td><a href=""><input type="button" value="Practise" style="width:80px;"></a></td>                                
                        <td><a href="LearnerProfile.jsp"><input type="button" value="Profile" style="width:80px;"></a></td> 
                        <td><a href=""><input type="button" value="Doubt" style="width:80px;"></a></td>
                        <td><a href=""><input type="Button" value="Grade" style="width:80px;"></a></td>
                        <td><input type="button" value="Logout" style="width:80px;"></td></tr>
                 </table> <!--Table End-->
                </span>
        </div>
        <div class="base">
           <div class="des1">                        
             <div class="des2">   
                <h4 class="font_1" style="margin:auto;"><span>Learner! What You want to do?</span></h4>                     
                   <table  border='0' cellpadding='0' cellspacing='35px' style=" width:500px;overflow:auto;text-align:center;margin:auto;"> 
                       <br><br>
                       <tr><td><a href="Profile.jsp"><input type="button" value="Edit Profile" style="color:#000000;"></a></td></tr>                                
                       <tr><td><a href="ViewLearner.jsp"><input type="button" value="View Profile" style="color:#000000;"></a></td></tr><br>                                  
                   </table>
        
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>
