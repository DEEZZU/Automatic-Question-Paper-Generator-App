<%-- 
    Document   : loginprocess
    Created on : Oct 11, 2017, 3:25:49 AM
    Author     : ANKITA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.LoginDao"%> 
 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lOGIN PROCESSING PAGE</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="aqpg.LoginBean"/>  
        <jsp:setProperty property="*" name="obj"/> 
        
        

        <% 
        out.println(obj.getLoginName()+" "+ obj.getPass()+ " "+obj.getType() );
        int status=LoginDao.validate(obj);
        out.println(status);
        if(status==1){  
        out.println("You r successfully logged in");  
        session.setAttribute("session","TRUE");
        String name= request.getParameter("loginName");
        session.setAttribute("LoginID", name);
        
        String s=request.getParameter("type");
        
        if(s.equals("A"))
        {
        //    out.println("here");
        %>
        <jsp:include page="AdminMainPage.jsp"></jsp:include>
        <%        
        }
        else if(s.equals("I"))
        {
        %>
        <jsp:include page="InstructorMainPage.jsp"></jsp:include>
        <%
        }
else 
{
%>
<jsp:include page="LearnerMainPage.jsp"></jsp:include>
<%
 //       out.println("here2");
        }
}
        else
        {
%>
<jsp:include page="index.jsp"></jsp:include>
<%
          out.print("Sorry, login or password error"); 
        }
        %>
    </body>
</html>
