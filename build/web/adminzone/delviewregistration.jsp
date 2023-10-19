<%-- 
    Document   : delviewregistration
    Created on : Oct 10, 2023, 10:45:42?PM
    Author     : Samsa
--%>


<%@page import="dbPack.DbManager" %>
<%
  String userid=request.getParameter("userid");
  DbManager dm=new DbManager();
  String query="delete from basicregistration where userid='"+userid+"'";
  if(dm.insertUpdateDelete(query)==true){
       out.print("<script>alert('Registration is delete'); window.location.href='viewregistration.jsp';</script>");
    }else{
      out.print("<script>alert('Registration is not delete'); window.location.href='viewregistration.jsp';</script>");
    }
%>
