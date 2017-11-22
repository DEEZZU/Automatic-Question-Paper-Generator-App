<%-- 
    Document   : ProcessDeleteQuestion
    Created on : 18 Nov, 2017, 9:31:00 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.DeleteQuestionDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Question Process</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.QuestionBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <%    
//        out.println(obj.getLoginName());
        int status=DeleteQuestionDao.Deletion(obj);  
        if(status==1){ 
        out.println("Congratulations!!!");
        %> 
        <jsp:include page="DeleteQuestion.jsp"></jsp:include>
        <%
        }
        else{
        out.println("Sorry !!!!");
        %>
        <jsp:include page="DeleteQuestion.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>

