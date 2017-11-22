<%-- 
    Document   : Profile
    Created on : 29 Oct, 2017, 8:55:24 PM
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
<body id="bg" background="BGP.jpg" margin="auto" >
    <div class="container">
        <div class="header h1">
            <h1><span class="h1" style="color:#113B2A; font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
        </div>
        <div class="base">
           <div class="des1">                        
             <div class="des2">   
                <br><h4 class="font_1" style="margin:auto;"><span>Your Details</span></h4><br>                     
                <form action="" >
                   <table  border='0' cellpadding='0' cellspacing='25px' style=" width:700px;overflow:auto;text-align:center;margin:auto;">
                                <tr><td><input type="text" id="UID" name="User ID" placeholder="User ID"></td>
                                    <td><input type="text" id="Fname" name="First Name" placeholder="First Name"></td>
                                    <td><input type="text" id="Lname" name="Last Name" placeholder="Last Name"></td></tr> 
                                <tr><td><input type="text" id="LogN" name="Login Name" placeholder="Login Name"></td>
                                    <td><input type="text" id="Pass" name="Password" placeholder="Password"></td>
                                    <td><input type="text" id="Pno" name="Contact Number" placeholder="Contact Number"></td></tr>
                                 <tr><td><input type="text" id="Bdate" name="Birthday(DD/MM/YY)" placeholder="Birthday(DD/MM/YY)"></td>
                                    <td><input type="text" id="Add" name="Address" placeholder="Address(Only City)"></td>
                                    <td><select id="Sex" name="type">
                                            <option value="O1">Female</option>
                                            <option value="O2">Male</option>
                                            <option value="O3">Others</option>
                                         </select></td></tr>
                                    <tr></<tr>                           
                                    <tr><td colspan="2"><input type="submit" value="EDIT"></td>
                                        <td colspan="2"><input type="submit" value="SUBMIT"></td></tr>                                           
                   </table>                            
                </form>   
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>
