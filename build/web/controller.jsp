<%-- 
    Document   : controller
    Created on : Sep 30, 2023, 2:09:35?AM
    Author     : Samsa
--%>

<%@page import="dbPack.DbManager"%>
<%@page import="java.sql.ResultSet" %>
<%
  
            /*------ Basic Registration--------*/
  if(request.getParameter("page").equals("registration")){
       String userid=request.getParameter("userid");
       String password=request.getParameter("password");
       String confirmpassword=request.getParameter("confirmpassword");
       String language=request.getParameter("language");
       String nickname=request.getParameter("nickname");
       String securityanswer=request.getParameter("securityanswer");
       
       DbManager dm=new DbManager();
       String query1="insert into basicregistration values('"+userid+"', '"+password+"', '"+confirmpassword+"', '"+language+"', '"+nickname+"', '"+securityanswer+"', curdate())";
       String query2="insert into login values('"+userid+"', '"+password+"', 'user', 'false')";
       if(dm.insertUpdateDelete(query1)==true){
            if(dm.insertUpdateDelete(query2)==true){
                out.print("<script>alert('Registration is done.'); window.location.href='personaldetail.jsp';</script>");
            }
        }
        else{
            out.print("<script>alert('Registration is not done.'); window.location.href='basicregistration.jsp';</script>");
        }
    }              /*------Presonal Detail--------*/
    else if(request.getParameter("page").equals("personaldetail")){
       String firstname=request.getParameter("firstname");
       String middlename=request.getParameter("middlename");
       String lastname=request.getParameter("lastname");
       String occupation=request.getParameter("occupation");
       String dob=request.getParameter("dob");
       String relation=request.getParameter("relation");
       String country=request.getParameter("country");
       String gender=request.getParameter("gender");
       String email=request.getParameter("email");
       String mobileno=request.getParameter("mobileno");
       String nationality=request.getParameter("nationality");
       
       DbManager dm=new DbManager();
       String query="insert into personaldetail values('"+firstname+"', '"+middlename+"', '"+lastname+"', '"+occupation+"', '"+dob+"', '"+relation+"', '"+country+"', '"+gender+"', '"+email+"', '"+mobileno+"', '"+nationality+"')";
       boolean res = dm.insertUpdateDelete(query);
       if(res == true){
         out.print(
                    "<script>alert('Personal Detail  is submitted'); window.location.href='regaddress.jsp';</script>"
            ); 
      }else{
            out.print(
                    "<script>alert('Personal Detail  is not submitted'); window.location.href='personaldetail.jsp';</script>"
            );
        }
    }         /*----------Regration Address---------*/
     else if(request.getParameter("page").equals("regaddress")){
       String flat=request.getParameter("flat");
       String lane=request.getParameter("lane");
       String area=request.getParameter("area");
       String pincode=request.getParameter("pincode");
       String city=request.getParameter("city");
       String state=request.getParameter("state");
       String postoffice=request.getParameter("postoffice");
       String mobileno=request.getParameter("mobileno");
       
       DbManager dm=new DbManager();
       String query="insert into regaddress values('"+flat+"', '"+lane+"', '"+area+"', '"+pincode+"', '"+city+"', '"+state+"', '"+postoffice+"', '"+mobileno+"', curdate())";
       boolean res = dm.insertUpdateDelete(query);
       if(res == true){
         out.print(
                    "<script>alert('Address  is submitted'); window.location.href='index.jsp';</script>"
            ); 
      }else{
            out.print(
                    "<script>alert('Address  is not submitted'); window.location.href='regaddress.jsp';</script>"
            );
        }
       
    }           /*-------------Login----------*/
    else if(request.getParameter("page").equals("login")){
      String userid=request.getParameter("userid");
      String password=request.getParameter("password");
      DbManager dm=new DbManager();
      String query="select * from login where userid='"+userid+"' and password='"+password+"'";
      ResultSet rs=dm.select(query);
      if(rs.next())
        {
            String usertype=rs.getString("usertype");
            
            if(usertype.equals("admin"))
            {
                session.setAttribute("adminid", userid);
                
                response.sendRedirect("adminzone/adminhome.jsp");
            }
             
            else if(usertype.equals("user"))
            {
                session.setAttribute("userid", userid);
                
                response.sendRedirect("userzone/userhome.jsp");
            }
        }
        
        else{
            out.print("<script>alert('Invalid User! Please Fill correct userid or password'); window.location.href='index.jsp';</script>");
        }
    }
    
           /*------------Search Train--------------*/
    if(request.getParameter("page").equals("index")){
       String fromstation=request.getParameter("fromstation");
       String tostation=request.getParameter("tostation");
       DbManager dm=new DbManager();
       String query="select * from trainschedule where fromstation='"+fromstation+"' and tostation='"+tostation+"'";
       ResultSet rs=dm.select(query);
       if(rs.next()){
         out.print("<script> window.location.href='searchtrain.jsp';</script>");
       }else{
         out.print("<script>alert('No Any Train in this root'); window.location.href='index.jsp';</script>");
       }
   }
   
  /* Modify Train Serach */
  if(request.getParameter("page").equals("searchtrain")){
       String fromstation=request.getParameter("fromstation");
       String tostation=request.getParameter("tostation");
       DbManager dm=new DbManager();
       String query="select * from trainschedule where fromstation='"+fromstation+"' and tostation='"+tostation+"'";
       ResultSet rs=dm.select(query);
       if(rs.next()){
         out.print("<script> window.location.href='searchtrain.jsp';</script>");
       }else{
         out.print("<script>alert('No Any Train in this root'); window.location.href='searchtrain.jsp';</script>");
       }
   }
%>


