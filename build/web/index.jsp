<%-- 
    Document   : index
    Created on : May 30, 2020, 12:45:37 PM
    Author     : Bharat
--%>
<%@page import="java.sql.*"%>
<%@page import="com.connection.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digi_Locker</title>
        
        <!--css-->
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/Mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!--w3 school css-->
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}

body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-size: cover;
  background-image: url("img/lock_new.jfif");
  min-height: 100%;
}

.w3-bar .w3-button {
  padding: 16px;
}

</style>

        
        
        
        
        
        <style>
            
            .banner-background{
                 clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 81%, 83% 68%, 27% 100%, 0 86%, 0% 30%);
            }
            
        </style>
    </head>
    <body>
        
        <!--navbar-->
        
        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="#">Digital_Locker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#about">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#contact">Contact Us</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="sign_up.jsp">signUp</a>
      </li>
     
    </ul>
  </div>
        </nav>
    
        <!--banner-->
        
        <div class="container-fluid m-0 p-0 banner-background" id="home">
            
            <div class="jumbotron primary-background text-white ">
                <div class="container">
                <h3 class="display-3">Welcome to Digi_Locker</h3>
                <p>
                    welcome to technical blog , World of Digital_Locker
                </p>
                
                <a href="" class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span> Start ! its free</a>
                <a href="Log_in.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> LOG_IN</a>
                </div>
            </div>
            
        </div>
        
        
        
    
        <!--home page-->
        
        <div class="w3-container " style="padding:128px 16px" >
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>We know design.</h3>
      <p>For a better connection we design to make your trust.</p>
      <p><a href="#work" class="w3-button w3-black"><i class="fa fa-th"> </i> View Our Works</a></p>
    </div>
    <div class="w3-col m6">
      <img class="w3-image w3-round-large" src="img/mac.png" alt="Buildings" width="700" height="394">
    </div>
  </div>
</div>
        
               
       
        
        <!-- About Section -->
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT THE COMPANY</h3>
  <p class="w3-center w3-large">Key features of our company</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-lock w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">High security</p>
      <p>You can freely use and store your data.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-archive w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Storage</p>
      <p>With a great storage you can store your whole data with a single click.</p>
    </div>
     <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Design</p>
      <p>Simple and trustable</p>
    </div>
   
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Support</p>
      <p>For your better experience we are always here for your help.</p>
    </div>
  </div>
</div>





    
        
       <!--skills--> 
        
        <div class="w3-container w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Our Skills.</h3>
      <p>we works on your demand to make this more secure and reliable for you.<br>
      to create your priceless trust on Us.</p>
      <p>Here we are available for you all the time.<br>
      if you have any query about our work you can easily contact us all time.</p>
    </div>
    <div class="w3-col m6">
      <p class="w3-wide"><i class="fa fa-shield w3-margin-right"></i>Security</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:100%">100%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-handshake-o w3-margin-right"></i>Trust</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:100%">100%</div>
      </div>
      <p class="w3-wide"><i class="fa fa-graduation-cap w3-margin-right"></i>Performance</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:100%">100%</div>
      </div>
    </div>
  </div>
</div>
                
        
        
       
        <!--contact-->
        
        <div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
      <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right" ></i>Vrindavan,India</p>
    <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right" ></i> Phone: +91 9639110011</p>
    <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right" > </i> Email: bharatchaudhary632@gmail.com</p>
    <br>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
          <button class="w3-button w3-black primary-background" type="submit" style="background:#4db6ac">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
  </div>
        </div>
      
        
        
        
        
        
        <!--footer-->
        
        
        <footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</footer>
        
        
        
        
        
        <!--java script-->
        
        <script
         src="https://code.jquery.com/jquery-3.5.1.min.js"
         integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
         crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="javascript/Myjavascript.js" type="text/javascript"></script>
        
        
        
        <!--w3 school scripting-->
        
        <script>
// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}


// Toggle between showing and hiding the sidebar when clicking the menu icon
var mySidebar = document.getElementById("mySidebar");

function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
  } else {
    mySidebar.style.display = 'block';
  }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
}
</script>
        

        
    </body>
</html>
