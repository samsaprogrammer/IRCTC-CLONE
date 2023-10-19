<%-- 
    Document   : trainschedule
    Created on : Oct 6, 2023, 9:48:25?PM
    Author     : Samsa
--%>

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
        <title>Dashbord</title>

        <!-- Css -->
        <link rel="stylesheet" href="../css/adminhome.css" />
        <link rel="stylesheet" href="../css/res.cs" />
        <link rel="stylesheet" href="../css/trainschedule.css">
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
        <script>
            function validate() {
                // alert("hii");
                let trainno = document.getElementById("trainno").value;
                let trainname = document.getElementById("trainname").value;
                let from = document.getElementById("from").value;
                let to = document.getElementById("to").value;
                let arrival = document.getElementById("arrival").value;
                let depature = document.getElementById("depature").value;
                let timming = document.getElementById("timming").value;
                let secondsetting = document.getElementById("secondsetting").value;
                let secondfare = document.getElementById("secondfare").value;
                let slepper = document.getElementById("slepper").value;
                let slepperfare = document.getAnimations("slepperfare").value;
                let thirdac = document.getElementById("thirdac").value;
                let thirdacfare = document.getElementById("thirdacfare").value;
                let secondac = document.getElementById("secondac").value;
                let secondacfare = document.getElementById("secondacfare").value;
                let firstac = document.getElementById("firstac").value;
                let firstacfare = document.getElementById("firstacfare").value;
                if (trainno.length < 6) {
                    document.getElementById("trainno").style.border = "1px solid red";
                } else {
                    document.getElementById("trainno").style.border = "";
                }
                if (trainname.length < 3) {
                    document.getElementById("trainname").style.border = "1px solid red";
                } else {
                    document.getElementById("trainname").style.border = "";
                }
                if (from.length < 3) {
                    document.getElementById("from").style.border = "1px solid red";
                } else {
                    document.getElementById("from").style.border = "";
                }
                if (to.length < 3) {
                    document.getElementById("to").style.border = "1px solid red";
                } else {
                    document.getElementById("to").style.border = "";
                }
                if (arrival.length < 2) {
                    document.getElementById("arrival").style.border = "1px solid red";
                } else {
                    document.getElementById("arrival").style.border = "";
                }
                if (depature.length < 2) {
                    document.getElementById("depature").style.border = "1px solid red";
                } else {
                    document.getElementById("depature").style.border = "";
                }
                if (timming.length < 2) {
                    document.getElementById("timming").style.border = "1px solid red";
                } else {
                    document.getElementById("timming").style.border = "";
                }
                if (secondsetting.length < 2) {
                    document.getElementById("secondsetting").style.border = "1px solid red";
                } else {
                    document.getElementById("secondsetting").style.border = "";
                }
                if (secondfare.length < 2) {
                    document.getElementById("secondfare").style.border = "1px solid yellow";
                } else {
                    document.getElementById("secondfare").style.border = "";
                }
                if (slepper.length<2) {
                    document.getElementById("slepper").style.border = "1px solid red";
                } else {
                    document.getElementById("slepper").style.border = "";
                }
                if (slepperfare=="") {
                    document.getElementById("slepperfare").style.border = "1px solid yellow";
                } else {
                    document.getElementById("slepperfare").style.border = "";
                }
                if (thirdac.length < 2) {
                    document.getElementById("thirdac").style.border = "1px solid red";
                } else {
                    document.getElementById("thirdac").style.border = "";
                }
                if (thirdacfare.length < 2) {
                    document.getElementById("thirdacfare").style.border = "1px solid yellow";
                } else {
                    document.getElementById("thirdacfare").style.border = "";
                }
                if (secondac.length < 2) {
                    document.getElementById("secondac").style.border = "1px solid red";
                } else {
                    document.getElementById("secondac").style.border = "";
                }
                if (secondacfare.length < 2) {
                    document.getElementById("secondacfare").style.border = "1px solid yellow";
                } else {
                    document.getElementById("secondacfare").style.border = "";
                }
                if (firstac.length < 2) {
                    document.getElementById("firstac").style.border = "1px solid red";
                } else {
                    document.getElementById("firstac").style.border = "";
                }
                if (firstacfare.length < 2) {
                    document.getElementById("firstacfare").style.border = "1px solid yellow";
                } else {
                    document.getElementById("firstacfare").style.border = "";
                }


            }
        </script>
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
                        <a href="trainprofile.jsp">
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
                        <a href="../index.jsp">
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

                    <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">
                        <div class="user">
                            <img src="../assets/wali.png" alt="" />
                        </div>
                    </button>

                    <div id="id01" class="modal">

                        <form class="modal-content animate" action="/action_page.php" method="post">
                            <div class="imgcontainer">
                                <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                <img src="../img/eurtugul.jpg" alt="Avatar" class="avatar">
                            </div>

                            <div class="container">
                                <h2>Hi, Samsa</h2>
                                <p>samsa.programmer@gmail.com</p>
                                <h1 onclick="document.getElementById('id02').style.display = 'block'" style="width:auto;"><a href="#">Change Password</a></h1>
                            </div>

                            <div class="add_account">
                                <h5><a href="#">Add Account</a></h5>
                            </div>
                        </form>
                    </div>

                    <!-- Change Password section start -->
                    <div id="id02" class="change_password_modal">
                        <form class="form_main animate">
                            <span onclick="document.getElementById('id02').style.display = 'none'" class="change_password_close" title="Close Modal">&times;</span>
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

                <div class="trainschedule_form_box">
                    <div class="trainschedule_form">
                        <form action="admincontroller.jsp" method="post">
                            <input type="hidden" name="page" value="trainschedule">
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="trainno" id="trainno">
                                    <span>Train NO</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="trainname" id="trainname">
                                    <span>Train Name</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="fromstation" id="from">
                                    <span>From</span>
                                </div>
                            </div>
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="tostation" id="to">
                                    <span>To</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="arrivaltime" id="arrival">
                                    <span>Arrival</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="depaturetime" id="depature">
                                    <span>Depature</span>
                                </div>
                            </div>
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="timming" id="timming">
                                    <span>Timming</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="secondsetting" id="secondsetting">
                                    <span>Second Setting</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="secondsettingfare" id="secondfare">
                                    <span>Second Setting Fare</span>
                                </div>
                            </div>
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="slepper" id="slepper">
                                    <span>Slepper</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="slepperfare" id="slepperfare">
                                    <span>Slepper Fare</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="thirdac" id="thirdac">
                                    <span>Third AC</span>
                                </div>
                            </div>
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="thirdacfare" id="thirdacfare">
                                    <span>Third AC Fare</span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="secondac" id="secondac">
                                    <span>Second AC </span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="secondacfare" id="secondacfare">
                                    <span>Second AC Fare</span>
                                </div>
                            </div>
                            <div class="firstBox">
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="firstac" id="firstac">
                                    <span>First AC </span>
                                </div>
                                <div class="inputBox">
                                    <input  type="text" required="" class="trainBox" name="firstacfare" id="firstacfare">
                                    <span>First AC Fare </span>
                                </div>
                            </div>
                            <button id="btn" type="submit" class="trainBtn">SUBMIT</button>
                        </form>
                    </div>
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
        <script src="../js/jquery.counterup.min.js"></script>
        <script src="../js/dashbord.js"></script>
        <script src="../js/trainschedule.js"></script>

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

            function loader() {
                document.querySelector('.loader-container').classList.add('fade-out');
            }

            function fadeOut() {
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
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>

        <!-- Profile image section end -->
    </body>
</html>
<%}%>
