<%-- 
    Document   : regaddress
    Created on : Oct 2, 2023, 12:33:17 AM
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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/regaddress.css">
        <link rel="stylesheet" href="css/header.css">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/faviicon.png" type="image/x-icon">
        <!-- Font awoseome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
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

                    <form action="controller.jsp" method="post">
                        <input type="hidden" name="page" value="regaddress">
                        <div class="basicFormDetail">
                            <!-- Flat Door Block No -->
                            <input type="text" name="flat" id="flat" class="flatox" placeholder="Flat/Door/Block No.">
                            <input type="text" name="lane" id="lane" class="lanebox" placeholder="Street/Lane (Optional)">
                            <p id="flatmass"></p>
                            <!-- Area -->
                            <input type="text" name="area" id="area" placeholder="Area/Locality (Optional)">
                            <!-- Pincode -->
                            <input type="text" name="pincode" id="pincode" placeholder="Pin Code">
                            <p id="pincodemass"></p>
                            <!-- City -->
                            <select name="city" id="city">
                                <option selected>Select City</option>
                                <option value="kanpur">Kanpur</option>
                                <option value="lucknow">Lucknow</option>
                                <option value="mahoba">Mahoba</option>
                                <option value="ghatampur">Ghatampur</option>
                            </select>
                            <!-- state -->
                            <input type="text" name="state" id="state" placeholder="State">
                            <p id="citymass"></p>
                            <p id="statemass"></p>
                            <!-- Post Office -->
                            <select name="postoffice" id="postoffice">
                                <option selected>Select a Post Office</option>
                                <option value="kanpur">Kanpur</option>
                                <option value="lucknow">Lucknow</option>
                                <option value="mahoba">Mahoba</option>
                                <option value="ghatampur">Ghatampur</option>
                            </select>
                            <!-- mobileno -->
                            <input type="text" name="mobileno" id="mobileno" placeholder="Phone">
                            <p id="mobilemass"></p>
                            <h4 class="officeaddresstext">Copy Residence to office <br> Address</h4>
                            <input type="radio" name="officeaddress" id="officeaddress" class="officeaddress" style="height: 20px; width: 25px;">Yes
                            <input type="radio" name="officeaddress" id="officeaddress" class="officeaddress" style="height: 20px; width: 25px;">No
                            <br>
                            <input type="checkbox" name="cobranded" id="cobranded" style="height: 20px; width: 25px;">
                            <span style="font-size: 14px; font-weight: 700; color: #333;">Please inform me about IRCTC Co-branded credit card through</span>
                            <span style="font-size: 14px; font-weight: 700; color: #333; margin-left: 8%; margin-top: 1%;">Phone/Email/SMS (Optional)</span>
                            <p id="cobrandedmass"></p>
                            <h3>Enjoy the railway ticket booking with 1% PG transaction charges waiver with IRCTC SBI/BOB/HDFC cards and also you can book ticket using earned loyalty reward points</h3>

                            <!-- Refresh button section start -->
                            <button class="refreshbtn">@w@ra  <i class="fa-solid fa-rotate-right"></i></button><br>
                            <br>
                            <input type="text" name="refreshtext" id="refreshtext" class="refreshtext" placeholder="Enter Captcha" style="width: 50%; margin-top: -10%; border-top: none;"><br>
                            <p id="refreshtextmass"></p>
                            <!-- Refresh button section end -->

                            <input type="checkbox" name="condition" id="condition" class="" style="height: 20px; width: 25px;">
                            <span style="font-size: 14px; font-weight: 700; color: #333;">I have read and agree with the <span style="color: #007AD9; cursor: pointer; "> Terms and Conditions </span> and also</span>
                            <h3 class="reglastcheckbox">agree to receive promotional</h3>
                            <h3 class="reglastcheckbox">emails/SMS/WhatsApp/Alerts/offers/announcements from</h3>
                            <h3 class="reglastcheckbox">IRCTC & associated partners.</h3>
                            <p id="conditionmass"></p>
                        </div>
                        <div class="regbutton">
                            <button type="reset" class="regcancel"><a href="personaldetail.jsp">Back</a></button>
                            <button  type="submit" class="regcontinue">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Basic Details Section End -->


        <!-- Js  -->
        <script src="js/regaddress.js"></script>
    </body>
</html>
