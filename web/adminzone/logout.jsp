<%-- 
    Document   : logout
    Created on : Oct 10, 2023, 10:56:25 PM
    Author     : Samsa
--%>

<%
  session.invalidate();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function logout(){
            window.history.forward();
            window.setTimeout("window.location.href='../index.jsp';", 1000);
        }
    </script>
    <body style="background-color: #fff" onload="logout()">
        
    </body>
</html>
