<%-- 
    Document   : header
    Created on : Sep 30, 2023, 1:49:14 AM
    Author     : Samsa
--%>
<script>
    function validate(){
        let userid=document.getElementById("userid").value;
        let password=document.getElementById("password").value;
        let capture=document.getElementById("capture").value;
        
        if(userid==""){
            document.getElementById("useridmass").innerHTML="Userid is required.";
            document.getElementById("useridmass").style.color="red";
            document.getElementById("useridmass").style.fontSize="20px";
            document.getElementById("useridmass").style.marginLeft="50px";
            document.getElementById("useridmass").style.marginTop="10px";
        }else{
            document.getElementById("useridmass").innerHTML="";
        }
        
        if(password.length<=3){
            document.getElementById("passwordmass").innerHTML="Week Password";
            document.getElementById("passwordmass").style.color="red";
            document.getElementById("passwordmass").style.fontSize="20px";
            document.getElementById("passwordmass").style.marginLeft="50px";
            document.getElementById("passwordmass").style.marginTop="10px";
        }else if(password.length>3 && password.lenght<=6){
            document.getElementById("passwordmass").innerHTML="Medium Password";
            document.getElementById("passwordmass").style.color="yellow";
            document.getElementById("passwordmass").style.fontSize="20px";
            document.getElementById("passwordmass").style.marginLeft="50px";
            document.getElementById("passwordmass").style.marginTop="10px";
        }else if(password.length>6){
            document.getElementById("passwordmass").innerHTML="Strong Password";
            document.getElementById("passwordmass").style.color="Green";
            document.getElementById("passwordmass").style.fontSize="20px";
            document.getElementById("passwordmass").style.marginLeft="50px";
            document.getElementById("passwordmass").style.marginTop="10px";
        }else{
            document.getElementById("passwordmass").innerHTML="";
        }   
        
        if(capture==""){
            document.getElementById("capturemass").innerHTML="Capture is required";
            document.getElementById("capturemass").style.color="red";
            document.getElementById("capturemass").style.fontSize="20px";
            document.getElementById("capturemass").style.marginLeft="50px";
            document.getElementById("capturemass").style.marginTop="";
        }else{
           document.getElementById("capturemass").innerHTML=""; 
        }
    }
</script>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <!-- Header section start -->
    <div class="header">
      <div class="header_first_logo">
        <img src="assets/asset 1.png" alt="" />
      </div>
      <div class="nav_bar">
        <nav class="first_nav">
          <ul>

            <!-- Modal section start -->
            <li class="nav_login">
              <button class="modal_login_btn" onclick="document.getElementById('id01').style.display='block'" style="width: auto">Login</button>

              <div id="id01" class="modal">
                  <form class="modal-content animate" method="post"  action="controller.jsp" >
                  <div class="imgcontainer">
                    <span
                      onclick="document.getElementById('id01').style.display='none'"
                      class="close"
                      title="Close Modal"
                      >&times;</span
                    >
                  </div>
                  <div class="container">
                      <div class="modal_container_box">
                        <h1>LOGIN</h1>
                        <input type="hidden" name="page" value="login">
                        <input type="text" name="userid" id="userid" class="input_modal_text" placeholder="User Name">
                        <p id="useridmass"></p>
                        <input type="password" name="password" id="password" class="input_modal_pass" placeholder="Password">
                        <p id="passwordmass"></p>
                        <h3>FORGOT ACCOUNT DETAIL?</h3>
                        <input type="button" value="@ W_AR @ eNgi N-NeR" class="input_modal_btn">
                        <input type="text" class="input_modal_text2" id="capture" placeholder="Enter Capture">
                        <p id="capturemass"></p>
                        <input type="checkbox" name="" id="" class="input_modal_checkbox"><span class="modal_checkbox_span">Login & Booking with OTP</span>
                        <input type="submit" value="SIGN IN" class="modal_sign_btn">
                        <div class="modal_rigistar_agent_btn">
                            <button class="modal_register"><a href="#" style="color: #fff;">Register</a></button>
                            <button class="modal_agentlogin"><a href="#" style="color: #fff;">Agent Login</a></button>
                        </div>
                    </div>
                  </div>
                </form>
              </div>
            </li>
            <!-- Modal section  end -->
            <li><a href="basicregistration.jsp">REGISTRATION</a></li>
            <li>AGENT LOGIN</li>
            <li>CONTACT US</li>
            <li>ASK DISHA</li>
            <li class="nav_alert">ALERTS</li>
          </ul>
        </nav>
        <nav class="second_nav">
          <ul class="second_nav">
            <li><i class="fa-solid fa-house"></i></li>
            <li class="exclusive">IRCTC EXCLUSIVE</li>
            <li class="nav_train">TRANIS</li>
            <li>BUSES</li>
            <li>FLIGHTS</li>
            <li>HOTELS</li>
            <li>HOLIDAY</li>
            <li>LOYALTA</li>
            <li>MEALS</li>
            <li>PROMOTIONS</li>
            <li>MORE</li>
          </ul>
        </nav>
      </div>
      <div class="header_second_logo">
        <img src="assets/asset 2.png" alt="" />
      </div>
    </div>
    <!-- Header section end -->