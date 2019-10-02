<%-- 
    Document   : loginprocess
    Created on : Oct 11, 2017, 3:25:49 AM
    Author     : ANKITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.LoginDao"%> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PROCESSING PAGE</title>
    </head>
    <body>
        <jsp:useBean id="userObject" class="aqpg.LoginBean"/>  
        <jsp:setProperty property="*" name="userObject"/> 
        <% 
        boolean isValidUser = LoginDao.validate(userObject);
        if (isValidUser) {  
            session.setAttribute("SESSION","true");
            String loginName = request.getParameter("loginName");
            session.setAttribute("USER", loginName);
            String userType = request.getParameter("type");
        
            if(userType.equals("A")) { // user is of Admin Type
        %>
            <jsp:include page="AdminMainPage.jsp"></jsp:include>
        <%        
            }
            else if(userType.equals("I")) { // user is of Instructor Type
        %>
            <jsp:include page="InstructorMainPage.jsp"></jsp:include>
        <%
            }
            else {
        %>
            <jsp:include page="LearnerMainPage.jsp"></jsp:include>
        <%
            }
        }
        else {
        %>
            <jsp:include page="errorLogin.jsp"></jsp:include>
        <%
        }
        %>
    </body>
</html>
