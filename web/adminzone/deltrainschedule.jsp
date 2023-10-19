<%-- 
    Document   : deltrainschedule
    Created on : Oct 7, 2023, 3:48:29?PM
    Author     : Samsa
--%>
<%@page import="dbPack.DbManager" %>
<%
 String trainno=request.getParameter("trainno");
 DbManager dm=new DbManager();
 String query="delete from trainschedule where trainno='"+trainno+"'";
 
if(dm.insertUpdateDelete(query)==true){
       out.print("<script>alert('Query is delete'); window.location.href='viewschedule.jsp';</script>");
    }else{
       out.print("<script>alert('Query is not delete'); window.location.href='viewschedule.jsp';</script>");
    }
%>
