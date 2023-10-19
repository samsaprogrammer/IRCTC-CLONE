// Validition for Basice Detail form
function submit(){
    // alert("hii");
    let name=document.getElementById("name").value;
    // alert(name);
    let password=document.getElementById("password").value;
    let confirmpassword=document.getElementById("confirmpassword").value;
    let language=document.getElementById("language").value;
    let nickname=document.getElementById("nickname").value;
    let securityanswer=document.getElementById("securityanswer").value;

    if(name==""){
        // alert("hii");
        document.getElementById("namemass").innerHTML="User name is requried";
        document.getElementById("namemass").style.color="red";
        
    }else{
        // alert("no");
        document.getElementById("namemass").innerHTML="";
    }
    if(password==""){
        // alert("hii");
        document.getElementById("passwordmass").innerHTML="Password is requried";
        document.getElementById("passwordmass").style.color="red";
        
    }else{
        // alert("no");
        document.getElementById("passwordmass").innerHTML="";
    }
    if(confirmpassword==""){
        // alert("hii");
        document.getElementById("confirmmass").innerHTML="Confirm password  is requried";
        document.getElementById("confirmmass").style.color="red";
    }else if(confirmpassword==password){
        document.getElementById("confirmmass").innerHTML="";
    }else{
        // alert("no");
        document.getElementById("confirmmass").innerHTML="Confirm password  is not match ";
        document.getElementById("confirmmass").style.color="red";
    }
    if(securityanswer==""){
        // alert("hii");
        document.getElementById("answermass").innerHTML="Security Answer is Required.";
        document.getElementById("answermass").style.color="red";
        
    }else{
        // alert("no");
        document.getElementById("answermass").innerHTML="";
    }


   
}