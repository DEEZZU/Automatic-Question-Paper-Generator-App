<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String filename= "text.txt";
     String filepath= "E:\\";
     response.setContentType("APPLICATION/OCTET-STREAM");
     response.setHeader("Content-Disposition","attachment; filename=\"" + filename+ "\"");
     java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);
     int i;
     while((i=fileInputStream.read()) != -1){
         out.write(i);
     }
%>
