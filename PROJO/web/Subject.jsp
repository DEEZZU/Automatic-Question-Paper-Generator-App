<%-- 
    Document   : Subject
    Created on : 19 Nov, 2017, 1:36:20 PM
    Author     : Shivani Tiwary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="aqpg.SubjectDAO"%>
<%@page import="java.util.*" %>
<%@page import="aqpg.SubjectBean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
            List=SubjectDAO.displaySubject();
            int size;
            size=List.size();
            //out.println("hERE"+size);
    %>
    <form action="ProcessChoice.jsp" >  
    
    <%
         for(int i=0; i<size;i++){
                                    %>
                                    <span><input type="checkbox" name="subject" value="<%=(List.get(i).getCname())%>"/></span>
                                    <label style="font-size: 15px; font-weight: bold;"><%=List.get(i).getCname()%></label><br>
                                    <%}%>                                     
                                <input type="submit" value="SUBMIT"> 
                                
      </form>  
    </body>
</html>
