<%-- 
    Document   : index
    Created on : Sep 29, 2023, 2:59:55 PM
    Author     : Samsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>IRCTC Next Generation eTicketing System</title>
    <!-- Css -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/header.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/faviicon.png" type="image/x-icon">

    <!-- Font awoseome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
    <style>
        .main_container{
            background-image: url(assets/mainbg.jpeg);
        }
    </style>
  </head>
  <body>
    

      
      <!-- Header Section start -->
      <jsp:include page="header.jsp"/>
      <!-- Header Section end -->
      
<!--            <script>
          function validate(){
              //alert("hii");
              let fromstation=document.getElementById("fromstation").value;
              let tostation=document.getElementById("tostation").value;
              //alert(tostation);
              if(fromstation=="" && tostation==""){
                  document.getElementById("fromstation").style.border="1px solid red";
                  document.getElementById("tostation").style.border="1px solid red";
              }else{
                 document.getElementById("fromstation").style.border=""; 
                 document.getElementById("tostation").style.border="1px solid red";
              }
          }
      </script>-->

    <!-- Mani Container section start -->
    <div class="main_container">
      <div class="left_content">
        <div class="search_box">
          <div class="search_box_top">
            <div class="pnr_status">PNR STATUS</div>
            <div class="charts_vacancy">CHARTS VACANCY</div>
          </div>

          <div class="book_ticket_search_box">
            <div class="azadi75">
              <img src="assets/asset 7.jpeg" alt="" />
            </div>
            <div class="book_ticket_text">
              <h1>BOOK TICKET</h1>
            </div>
            <div class="g2">
              <img src="assets/asset 8.png" alt="" />
            </div>
          </div>

          <div class="search_train_box">
              <form action="controller.jsp" method="post" >
                  <input type="hidden" name="page" value="index"/>
            <input type="text" class="from" placeholder="From" name="fromstation" id="fromstation" />
            <input type="date" class="dob" name="" id="" />
            <input type="text" class="to" placeholder="TO" name="tostation" id="tostation" />
            <select class="classes">
              <option value="">All Classes</option>
              <option value="">AC First</option>
              <option value="">AC Second</option>
              <option value="">AC Third</option>
              <option value="">First Class</option>
              <option value="">Second Setting</option>
            </select>
            <select class="general">
              <option value="">GENERAL</option>
              <option value="">LADIES</option>
              <option value="">TATKAL</option>
              <option value="">DUTY PASS</option>
              <option value="">PREMIUM TATKAL</option>
              <option value="">PERSON WITH DISABILITY</option>
              <option value="">LOWER BERTH/SR.CITIZEN</option>
            </select><br>
            <input type="checkbox" class="checkboxbtn" name="" id=""><span class="maincheckboxtext">Person With Disability Concession</span>
            <input type="checkbox" class="checkboxbtn" name="" id=""><span class="maincheckboxtext">Flexible With Date</span>  <br>
            <input type="checkbox" class="checkboxbtn" name="" id=""><span class="maincheckboxtext">Train With Available Berth</span>
            <input type="checkbox" class="checkboxbtn" name="" id=""><span class="maincheckboxtext">Railway Pass Concession</span>
            
            <button type="submit"  class="find_train" style="margin-top: 40px">Search</button>
            
            
            <button class="disha_btn" style="margin-top: 40px" type="submit">Try booking in Ask DISHA 2.0</button>
              </form>
          </div>
        </div>
        <div class="notices">
          <p>
            Users are advised to download Official ‘IRCTC Rail Connect’ Apps
            only from Google Play Store or Apple App Store. Please do not use
            unauthorized links/URLs.
          </p>
          <h6>
            Please check the alert section regarding restoration of AC 3-tier
            economy fare.
          </h6>
        </div>
      </div>

      <div class="main_content_text">
        <h1>INDIAN RAILWAYS</h1>
        <h3>
          <span>Saftey </span>
          <hr />
          <span>&nbsp; Security</span>
          <hr />
          <span>&nbsp; Punctuality</span>
        </h3>
      </div>
    </div>
    <!-- Mani Container section end -->

    <!-- Js -->
    <script src="/js/main.js"></script>
  </body>
</html>

