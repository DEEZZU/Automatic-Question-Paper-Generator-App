<%-- 
    Document   : AddCourseProcess
    Created on : 31 Oct, 2017, 7:00:05 AM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.AddCourseDao"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.CourseBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <% 
        
        int status=AddCourseDao.Insertion(obj);  
        if(status==1){ 
        out.println("Congratulations!!!");
        %> 
        <jsp:include page="AddCourse.jsp"></jsp:include>
        <%
        }
        else{
        out.println("Sorry !!!!");
        %>
        <jsp:include page="AddCourse.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>

