<%-- 
    Document   : ProcessDeleteCourse
    Created on : 6 Nov, 2017, 2:15:26 PM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.DeleteCourseDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Course Process</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.CourseBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        <%    
//        out.println(obj.getLoginName());
        int status=DeleteCourseDao.Deletion(obj);  
        if(status==1){ 
        out.println("Congratulations!!!");
        %> 
        <jsp:include page="DeleteCourse.jsp"></jsp:include>
        <%
        }
        else{
        out.println("Sorry !!!!");
        %>
        <jsp:include page="DeleteCourse.jsp"></jsp:include>
        <%
        }
        %>
        
    </body>
</html>

