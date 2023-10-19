<%-- 
    Document   : userhome
    Created on : Oct 2, 2023, 11:43:51 AM
    Author     : Samsa
--%>

<%
  if(session.getAttribute("userid")==null){
       response.sendRedirect("../index.jsp");
    }
    else
    {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello User!</h1>
    </body>
</html>
<%}%>
