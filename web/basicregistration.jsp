<%-- 
    Document   : basicregistration
    Created on : Sep 30, 2023, 1:42:42 AM
    Author     : Samsa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>IRCTC Next Generation eTicketing System</title>

        <!-- Css -->
        <link rel="stylesheet" href="css/registration.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/header.css">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/faviicon.png" type="image/x-icon">
        <!-- Font awoseome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
        <script src="js/registration.js"></script>
    </head>
    <body>

        <script>
            // Validition for Basice Detail form
            function validate() {
                // alert("hii");
                let name = document.getElementById("name").value;
                // alert(name);
                let password = document.getElementById("password").value;
                let confirmpassword = document.getElementById("confirmpassword").value;
                let language = document.getElementById("language").value;
                let nickname = document.getElementById("nickname").value;
                let securityanswer = document.getElementById("securityanswer").value;

                if (name == "") {
                    // alert("hii");
                    document.getElementById("namemass").innerHTML = "User name is requried";
                    document.getElementById("namemass").style.color = "red";

                } else {
                    // alert("no");
                    document.getElementById("namemass").innerHTML = "";
                }
                if (password == "") {
                    // alert("hii");
                    document.getElementById("passwordmass").innerHTML = "Password is requried";
                    document.getElementById("passwordmass").style.color = "red";

                } else {
                    // alert("no");
                    document.getElementById("passwordmass").innerHTML = "";
                }
                if (confirmpassword == "") {
                    // alert("hii");
                    document.getElementById("confirmmass").innerHTML = "Confirm password  is requried";
                    document.getElementById("confirmmass").style.color = "red";
                } else if (confirmpassword == password) {
                    document.getElementById("confirmmass").innerHTML = "";
                } else {
                    // alert("no");
                    document.getElementById("confirmmass").innerHTML = "Confirm password  is not match ";
                    document.getElementById("confirmmass").style.color = "red";
                }
                if (securityanswer == "") {
                    // alert("hii");
                    document.getElementById("answermass").innerHTML = "Security Answer is Required.";
                    document.getElementById("answermass").style.color = "red";

                } else {
                    // alert("no");
                    document.getElementById("answermass").innerHTML = "";
                }



            }
        </script>


        <!-- Header Section start -->
        <jsp:include page="header.jsp"/>
        <!-- Header Section end -->


        <!-- Basic Details Section Start -->
        <div class="registration">
            <div class="basic_container">
                <div class="detail_box">
                    <h3>Create Your account</h3>
                    <div class="format_detail">
                        <h4>Basic Details</h4>
                        <h4>Personal Details</h4>
                        <h4>Address</h4>
                    </div>
                    <hr>
                    <h5>GARBAGE/JUNK VALUES IN PROFILE MAY LEAD TO DEACTIVATION</h5>
                    <p>Please use a valid E-Mail ID and mobile number in registration.</p>


                    <form action="controller.jsp" method="post">
                        <input type="hidden" name="page" value="registration"/>
                        <div class="basicFormDetail">
                            <!-- User Name -->
                            <input type="text" name="userid" placeholder="User Name" id="name">
                            <p id="namemass"></p>
                            <!-- Password -->
                            <input type="password" name="password" placeholder="Password" id="password">
                            <p id="passwordmass"></p>
                            <!-- Confirm Password -->
                            <input type="password"  name="confirmpassword" placeholder="Confirm Password" id="confirmpassword">
                            <p id="confirmmass"></p>
                            <!-- Preffred Language -->
                            <select name="language" id="language">
                                <option value="language">Preffred Language</option>
                                <option value="english">English</option>
                                <option value="hindi">Hindi</option>
                            </select>
                            <p id="langmass"></p>
                            <!-- nick Name -->
                            <select name="nickname" id="nickname">
                                <option value="petname">What is your pet name?</option>
                                <option value="firstschool">What was the name of your first school?</option>
                                <option value="hero">Who was your Childhood hero?</option>
                                <option value="time">What is your favorite past-time?</option>
                                <option value="team">What is your all time favorite sports team?</option>
                                <option value="middlename">What is your fathers middle name?</option>
                                <option value="bike">What make was your first car or bike?</option>
                                <option value="spouse">Where did you first meet your spouse?</option>
                            </select>
                            <p id="nickmass"></p>
                            <!-- Security Answer -->
                            <input type="text" name="securityanswer" placeholder="Security Answer" id="securityanswer">
                            <p id="answermass"></p>

                        </div>


                        <div class="regbutton">
                            <button  class="regcancel">Cancel</button>
                            <button  type="submit" class="regcontinue">Continue<i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Basic Details Section End -->


        <!-- Js  -->

    </body>
</html>