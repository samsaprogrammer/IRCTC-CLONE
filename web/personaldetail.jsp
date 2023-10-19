<%-- 
    Document   : personaldetail
    Created on : Sep 30, 2023, 11:14:32 PM
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
        <!-- <link rel="stylesheet" href="css/registration.css"> -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/personaldetail.css">
        <link rel="stylesheet" href="css/header.css">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/faviicon.png" type="image/x-icon">
        <!-- Font awoseome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
    </head>
    <body>

        <script>
            /*Create a Validation */
            function validate() {
                //alert("hhi");
                let firstname = document.getElementById("firstname").value;
                let occupation = document.getElementById("occupation").value;
                let dob = document.getElementById("dob").value;
                let country = document.getElementById("country").value;
                let email = document.getElementById("email").value;
                let mobileno = document.getElementById("mobileno").value;
                let nationality = document.getElementById("nationality").value;
                if (firstname == "") {
                    document.getElementById("firstnamemass").innerHTML = "First Name is required";
                    document.getElementById("firstnamemass").style.color = "red";
                } else {
                    document.getElementById("firstnamemass").innerHTML = "";
                }
                if (occupation == "Select Occupation") {
                    document.getElementById("occupationmass").innerHTML = "Occupation is Required.";
                    document.getElementById("occupationmass").style.color = "red";
                } else {
                    document.getElementById("occupationmass").innerHTML = "";
                }
                if (dob == "") {
                    document.getElementById("dobmass").innerHTML = "Select Date Of Birth.";
                    document.getElementById("dobmass").style.color = "red";
                } else {
                    document.getElementById("dobmass").innerHTML = "";
                }
                if (email == "") {
                    document.getElementById("emailmass").innerHTML = "Email is required.";
                    document.getElementById("emailmass").style.color = "red";
                } else {
                    document.getElementById("emailmass").innerHTML = "";
                }
                if (mobileno == "") {
                    document.getElementById("mobilemass").innerHTML = "Mobile No is required.";
                    document.getElementById("mobilemass").style.color = "red";
                } else {
                    document.getElementById("mobilemass").innerHTML = "";
                }
                if (nationality == "Select a Nationality") {
                    document.getElementById("nationalitymass").innerHTML = "Nationality is required.";
                    document.getElementById("nationalitymass").style.color = "red";
                } else {
                    document.getElementById("nationalitymass").innerHTML = "";
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

                    <form action="controller.jsp" onkeyup="event.preventDefault(); validate();" method="post">
                        <input type="hidden" name="page" value="personaldetail">
                        <div class="basicFormDetail">
                            <!-- first name -->
                            <input type="text" name="firstname" id="firstname" class="namebox" placeholder="First Name">
                            <input type="text" name="middlename" id="middlename" class="namebox" placeholder="Middle Name">
                            <input type="text" name="lastname" id="lastname" class="namebox" placeholder="Last Name">
                            <p id="firstnamemass"></p>
                            <!-- info -->
                            <h4>Info!Please provide your exact name as per Aadhaar to avail Aadhaar based benefits on IRCTC eTicketing website.</h4>
                            <!-- Occupation -->
                            <select name="occupation" id="occupation">
                                <option selected>Select Occupation</option>
                                <option value="goverment">GOVERMENT</option>
                                <option value="public">PUBLIC</option>
                                <option value="private">PRIVATE</option>
                                <option value="professional">PROFEFSSIONAL</option>
                                <option value="selfemployed">SELF EMPLOYED</option>
                                <option value="student">STUDENT</option>
                                <option value="other">OTHER</option>
                            </select>
                            <!-- dob -->
                            <input type="date" name="dob" id="dob" class="dob" placeholder="Date of Birth">
                            <p id="occupationmass"></p>
                            <p id="dobmass"></p>
                            <!-- relation -->
                            <input type="radio" name="relation" id="married" class="relation" value="married"> <span class="radioboxtext">Married</span>
                            <input type="radio" name="relation" id="unmarried" class="relation" value="unmarried"><span class="radioboxtext">Unmarried</span> <br>
                            <!-- country -->
                            <select name="country" id="country">
                                <option value="india">INDIA</option>
                                <option value="turkey">TURKEY</option>
                                <option value="rassiya">RASSIYA</option>
                            </select>
                            <!-- gender -->
                            <input type="radio" name="gender" id="male" class="gender"  value="male"><span class="radioboxtext"> Male</span>
                            <input type="radio" name="gender" id="female" class="gender" value="female"><span class="radioboxtext">Female</span>
                            <input type="radio" name="gender" id="transgender" class="gender" value="transgender"> <span class="radioboxtext">Transgender</span>
                            <p id="countrymass"></p>
                            <!-- Email -->
                            <input type="email" name="email" id="email" class="email" placeholder="Email">
                            <!-- mobileno -->
                            <input type="text" placeholder="91" readonly name="" id="" class="mobilepin">
                            <input type="text" name="mobileno" id="mobileno" class="mobileno" placeholder="Mobile">
                            <p id="emailmass"></p>
                            <p id="mobilemass"></p>
                            <!-- nationality -->
                            <select name="nationality" id="nationality">
                                <option selected>Select a Nationality</option>
                                <option value="indian">Indian</option>
                                <option value="tuerkey">Tuerkey</option>
                                <option value="american">American</option>
                            </select>
                            <p id="nationalitymass"></p>
                        </div>
                        <div class="regbutton">
                            <button type="reset" class="regcancel"><a href="basicregistration.jsp">Back</a></button>
                            <button  type="submit" class="regcontinue">Continue<i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Basic Details Section End -->


        <!-- Js  -->
        <script src="js/personaldetail.js"></script>
    </body>
</html>
