<%-- 
    Document   : ProcessDeleteUser
    Created on : 1 Nov, 2017, 3:46:03 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.DeleteUserDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User Process</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.LoginBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <%    
//        out.println(obj.getLoginName());
        int status=DeleteUserDao.Deletion(obj);  
        if(status==1){ 
        out.println("Congratulations!!!");
        %> 
        <jsp:include page="DeleteUser.jsp"></jsp:include>
        <%
        }
        else{
        out.println("Sorry !!!!");
        %>
        <jsp:include page="DeleteUser.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>
