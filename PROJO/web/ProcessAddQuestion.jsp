<%-- 
    Document   : ProcessAddQuestion
    Created on : 3 Nov, 2017, 9:11:18 PM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.AddQuestionDao"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Question</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.QuestionBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <%         
        int status=AddQuestionDao.Insertion(obj);  
        if(status==1){ 
        out.println("Congratulations!!!");
        %> 
        <jsp:include page="AddQuestion.jsp"></jsp:include>
        <%
        }
        else{
        out.println("Sorry !!!!");
        %>
        <jsp:include page="AddQuestion.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>

