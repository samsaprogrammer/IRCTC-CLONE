<%-- 
    Document   : viewregistration
    Created on : Oct 10, 2023, 10:27:45?PM
    Author     : Samsa
--%>
<%@page import="dbPack.DbManager" %>
<%@page import="java.sql.ResultSet" %>
<%
  if(session.getAttribute("adminid")==null){
      response.sendRedirect("../index.jsp");
    }
    else
    {
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View Registration</title>

    <!-- Css -->
    <link rel="stylesheet" href="../css/adminhome.css" />
    <link rel="stylesheet" href="../css/res.cs" />
    <link rel="stylesheet" href="../css/viewschedule.css">
    <!-- icon -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css"
    />

    <!-- Counter Down Jqurey -->
    <script
      src="https://code.jquery.com/jquery-1.12.4.min.js"
      integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!-- --------------Navigation Section Start---------------- -->
    <div class="dash_cotainer">
      <div class="das_navigation">
        <ul>
          <li class="sideNav-img">
            <a href="#">
             <img src="../img/eurtugul.jpg" alt="">
            </a>
         </li>
          <li>
            <a href="adminhome.jsp">
              <span class="icon">
                <ion-icon name="home-outline"></ion-icon>
              </span>
              <span class="title">Dashbord</span>
            </a>
          </li>
          <li>
            <a href="profile.html">
              <span class="icon">
                <ion-icon name="person-circle-outline"></ion-icon>
              </span>
              <span class="title">Train Profile</span>
            </a>
          </li>
          <li>
            <a href="viewschedule.jsp">
              <span class="icon">
                <ion-icon name="eye-outline"></ion-icon>
              </span>
              <span class="title">View Schedule </span>
            </a>
          </li>
          <li>
            <a href="trainschedule.jsp">
              <span class="icon">
                <ion-icon name="train-outline"></ion-icon>
              </span>
              <span class="title">Train Schedule </span>
            </a>
          </li>
          <li>
            <a href="#">
              <span class="icon">
                <ion-icon name="settings-outline"></ion-icon>
              </span>
              <span class="title">Setting</span>
            </a>
          </li>
          <li>
            <a href="index.html">
              <span class="icon">
                <ion-icon name="log-out-outline"></ion-icon>
              </span>
              <span class="title">Sign Out</span>
            </a>
          </li>
        </ul>
      </div>

      <!-- -------------Main Content----------------- -->

      <div class="main_content">
        <div class="topbar">
          <div class="toggle">
            <ion-icon name="menu-outline" style="color: #213D77;"></ion-icon>
          </div>

          <div class="search">
            <label for="">
              <input type="text" placeholder="Search Here" />
              <ion-icon name="search-outline"></ion-icon>
            </label>
          </div>

          <!-- ------------User Img---------------- -->
          

          <!-- Profile image section start -->

          <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">
            <div class="user">
              <img src="../assets/wali.png" alt="" />
            </div>
          </button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="../img/eurtugul.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="container">
        <h2>Hi, Samsa</h2>
        <p>samsa.programmer@gmail.com</p>
        <h1 onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><a href="#">Change Password</a></h1>
    </div>

    <div class="add_account">
       <h5><a href="#">Add Account</a></h5>
    </div>
  </form>
</div>

<!-- Change Password section start -->
<div id="id02" class="change_password_modal">
  <form class="form_main animate">
    <span onclick="document.getElementById('id02').style.display='none'" class="change_password_close" title="Close Modal">&times;</span>
    <p class="heading">Change Password</p>
    <div class="inputContainer">
        <svg class="inputIcon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#2e2e2e" viewBox="0 0 16 16">
    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
    </svg>
    <input type="text" name="oldpassword" class="inputField" id="oldpassword" placeholder="Old Password">
    </div>
    
<div class="inputContainer">
    <svg class="inputIcon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#2e2e2e" viewBox="0 0 16 16">
    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"></path>
    </svg>
    <input type="password" name="newpassword" class="inputField" id="newpassword" placeholder="New Password">
</div>
              
           
<input type="submit" value="Change Password" class="changepasswordbtn">
    <a class="forgotLink" href="#">Forgot your password?</a>


  </form>
</div>

<!-- Change Password section end -->




          <!-- Profile image section end -->
        </div>
        <hr />
        <!-- Main Content Section start -->
            <div class="tablebox">
              <table>
                <thead>
                  <tr>
                    <th>Userid</th>
                    <th>Password</th>
                    <th>Confirm Password</th>
                    <th>Language</th>
                    <th>Nick Name</th>
                    <th>Answer</th>
                    <th>Reg Date</th>
                    <th>Delete</th>
                  </tr>
                </thead>
                <%
                   DbManager dm=new DbManager();
                   ResultSet rs=dm.select("select * from basicregistration");
                   while(rs.next())
                   {
                %>
                <tbody>
                  <tr>
                    <td><%=rs.getString("userid")%></td>
                    <td><%=rs.getString("password")%></td>
                    <td><%=rs.getString("confirmpassword")%></td>
                    <td><%=rs.getString("language")%></td>
                    <td><%=rs.getString("nikename")%></td>
                    <td><%=rs.getString("anwser")%></td>
                    <td><%=rs.getString("regdate")%></td>
                    <td>
                        <a href="delviewregistration.jsp?userid=<%=rs.getString("userid")%>">
                            <button id="btn" type="submit" class="trainBtn">Delete</button>
                        </a>
                    </td>
                  </tr>
                </tbody>
                <%}%>
              </table>
            </div>
        <!-- Main Content Section end -->
      </div>
    </div>

    <!--loder stction start-->

    <div class="loader-container">
      <img src="../img/load.gif" alt="">
    </div>

    <!--loder stction end-->



    
               <!-- Chart -->
               <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- Js -->
    <script src="../js/main.js"></script>
    <script src="../js/dashbord.js"></script>

    <!-- Icon -->
    <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>

    <!-- For Countdown -->

    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="/js/jquery.counterup.min.js"></script>
    <script src="/js/dashbord.js"></script>
    <script src="/js/trainschedule.js"></script>

    <script>
      jQuery(document).ready(function ($) {
        $(".counter").counterUp({
          delay: 10,
          time: 10000,
        });
      });
    </script>


<script>
    /* page refresh section start */

function loader(){
document.querySelector('.loader-container').classList.add('fade-out');
}

function fadeOut(){
    setInterval(loader, 3000);
}

window.onload = fadeOut();

/* page refresh section end */
</script>


<!-- Profile image section start -->


<script>
  // Get the modal
  var modal = document.getElementById('id01');
  
  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  </script>

<!-- Profile image section end -->
  </body>
</html>
<%}%>
