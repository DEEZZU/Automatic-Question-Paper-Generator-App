<%-- 
    Document   : RegisterProcess
    Created on : 31 Oct, 2017, 6:14:09 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.RegisterUserDao"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add User</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.LoginBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <%         
        int isSuccess=RegisterUserDao.Insertion(obj);  
        if ( isSuccess == 1 ) { 
        %> 
            <jsp:include page="AddUser.jsp"></jsp:include>
        <%
        }
        else {
        %>
            <jsp:include page="AddUser.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>

