<%-- 
    Document   : AddQuestions
    Created on : 31 Oct, 2017, 7:08:09 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Question</title>
    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href="template.css" type="text/css">
</head>
<body id="bg" background="BG3.jpg" margin="auto" >
    <div class="container">
        <div class="header h1">
            <h1><span class="h1" style="text-align: left;font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;">
                    Automatic Question Paper Generator</span></h1>
                <span class="menu">                        
                  <table border='0' cellpadding='0' cellspacing='15' valign="left" style="overflow:auto;text-align:center;margin:auto;">
                    <tr><td><a href="ViewAdmin.jsp"><input type="button" value="View" style="width:80px;"></a></td>                                
                                <td><input type="button" value="Correction Request" ></td> 
                                <td><a href="AdminAdd.jsp"><input type="button" value="Add" style="width:80px;"></a></td>
                                <td><a href="AdminDelete.jsp"><input type="button" value="Delete" style="width:80px;"></a></td>                               
                                <td><a href="AdminModify.jsp"><input type="button" value="Modify" style="width:80px;"></td>
                                <td><input type="button" value="Logout" style="width:80px;"></td></tr>
                  </table> <!--Table End-->
                </span> 
        </div>
        <div class="base">
           <div class="des1">                        
             <div class="des2">   
                <h4 class="font_1" style="margin:auto;"><span>Admin! Add Question</span></h4>                     
                <form action="ProcessAddQuestion.jsp" >
                   <table  border='0' cellpadding='0' cellspacing='20' style=" width:700px;overflow:auto;text-align:center;margin:auto; clear:both;">
                                <tr><td style="width:320px"><input type="text" id="sno" name="sno" placeholder="Serial Number"></td>
                                    <td><input type="text" id="Diff" name="c_sid" placeholder="Course ID"></td></tr>                                     
                                <tr><td colspan="2"><input type="text" id="CS" name="ques_stmt" placeholder="Question Statement"></td></tr>
                                <tr><td ><input type="text" id="QS" name="option_1" placeholder="Option 1"></td>
                                    <td><input type="text" id="QS" name="option_2" placeholder="Option 2"></td></tr>
                                <tr><td><input type="text" id="QS" name="option_3" placeholder="Option 3"></td>
                                    <td><input type="text" id="QS" name="option_4" placeholder="Option 4"></td></tr>                                
                                <tr><td><input type="text" id="ans" name="ans" placeholder="Answer(Enter Numeric Values)"></td>
                                    <td><select id="Le" name="level" style="width:320px;">
                                            <option value="0">Level 0</option>
                                            <option value="1">Level 1</option>
                                            <option value="2">Level 2</option>
                                            <option value="3">Level 3</option>
                                            <option value="4">Level 4</option>
                                            <option value="5">Level 5</option>
                                            <option value="6">Level 6</option>
                                            <option value="7">Level 7</option>
                                            <option value="8">Level 8</option>
                                            <option value="9">Level 9</option>
                                        </select></td></tr>   
                                <tr><td><a href="AdminMainPage.jsp"><input type="submit" value="BACK"></a>
                                    <td><input type="submit" value="SUBMIT"></td></tr>                                           
                   </table>                            
                </form>   
            </div>  <!--des1 End-->  
         </div>  <!--des1 End-->
       </div>  <!--Base end-->    
    </div> <!--Container End-->
</body>
</html>

