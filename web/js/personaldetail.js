/*Create a Validation */
function validate(){
    // alert("hhi");
    let firstname=document.getElementById("firstname").value;
    let occupation=document.getElementById("occupation").value;
    let dob=document.getElementById("dob").value;
    let country=document.getElementById("country").value;
    let email=document.getElementById("email").value;
    let mobileno=document.getElementById("mobileno").value;
    let nationality=document.getElementById("nationality").value;
    if(firstname==""){
        document.getElementById("firstnamemass").innerHTML="First Name is required";
        document.getElementById("firstnamemass").style.color="red";
    }else{
        document.getElementById("firstnamemass").innerHTML="";
    }
    if(occupation=="Select Occupation"){
        document.getElementById("occupationmass").innerHTML="Occupation is Required.";
        document.getElementById("occupationmass").style.color="red";
    }else{
        document.getElementById("occupationmass").innerHTML="";
    }
    if(dob==""){
        document.getElementById("dobmass").innerHTML="Select Date Of Birth.";
        document.getElementById("dobmass").style.color="red";
    }else{
        document.getElementById("dobmass").innerHTML="";
    }
    if(email==""){
        document.getElementById("emailmass").innerHTML="Email is required.";
        document.getElementById("emailmass").style.color="red";
    }else{
        document.getElementById("emailmass").innerHTML="";
    }
    if(mobileno==""){
        document.getElementById("mobilemass").innerHTML="Mobile No is required.";
        document.getElementById("mobilemass").style.color="red";
    }else{
        document.getElementById("mobilemass").innerHTML="";
    }
    if(nationality=="Select a Nationality"){
        document.getElementById("nationalitymass").innerHTML="Nationality is required.";
        document.getElementById("nationalitymass").style.color="red";
    }else{
        document.getElementById("nationalitymass").innerHTML="";
    }

    
    
}