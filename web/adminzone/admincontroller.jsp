<%-- 
    Document   : admincontroller
    Created on : Oct 5, 2023, 7:35:14?PM
    Author     : Samsa
--%>



<%@page import="dbPack.DbManager"%>
<%                /*-----Change Password-------- */
if(request.getParameter("page").equals("changepassword")){
      String oldpassword=request.getParameter("oldpassword");
      String newpassword=request.getParameter("newpassword");
      String userid=session.getAttribute("adminid").toString();
      DbManager dm=new DbManager();
      String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
       if(dm.insertUpdateDelete(query)==true){
             out.print("<script>alert('password is  changed'); window.location.href='adminhome.jsp';</script>");
            
        }
        else{
            out.print("<script>alert('password is not changed'); window.location.href='adminhome.jsp';</script>");
        }
    }            /*---------Train Schedule------------*/
    else if(request.getParameter("page").equals("trainschedule")){
       String trainno=request.getParameter("trainno").trim();
       String trainname=request.getParameter("trainname").trim();
       String fromstation=request.getParameter("fromstation").trim();
       String tostation=request.getParameter("tostation").trim();
       String arrivaltime=request.getParameter("arrivaltime").trim();
       String depaturetime=request.getParameter("depaturetime").trim();
       String timming =request.getParameter("timming").trim();
       String secondsetting=request.getParameter("secondsetting").trim();
       String secondsettingfare=request.getParameter("secondsettingfare").trim();
       String slepper=request.getParameter("slepper").trim();
       String slepperfare=request.getParameter("slepperfare").trim();
       String thirdac=request.getParameter("thirdac").trim();
       String thirdacfare=request.getParameter("thirdacfare").trim();
       String secondac=request.getParameter("secondac").trim();
       String secondacfare=request.getParameter("secondacfare").trim();
       String firstac=request.getParameter("firstac").trim();
       String firstacfare=request.getParameter("firstacfare").trim();
       DbManager dm=new DbManager();
       String query="insert into trainschedule values('"+trainno+"', '"+trainname+"', '"+fromstation+"', '"+tostation+"', '"+arrivaltime+"', '"+depaturetime+"', '"+timming+"',  '"+secondsetting+"', '"+secondsettingfare+"',  '"+slepper+"', '"+slepperfare+"',  '"+thirdac+"', '"+thirdacfare+"',  '"+secondac+"', '"+secondacfare+"', '"+firstac+"', '"+firstacfare+"')";
       if(dm.insertUpdateDelete(query)==true){
          out.print("<script>alert('Train Schedule is submit'); window.location.href='trainschedule.jsp';</script>"); 
      }else{
         out.print("<script>alert('Train Schedule is not submit'); window.location.href='trainschedule.jsp';</script>");
      }
    }
%>
