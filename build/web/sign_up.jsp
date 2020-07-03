<%-- 
    Document   : sign_up
    Created on : Jun 1, 2020, 6:53:09 PM
    Author     : Bharat
--%>
<%@page import="com.servlet.registration" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/Mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        

        
        
    </head>
    <body>
        
        <!--navbar-->
        
             <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="index.jsp">Digital_Locker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
     
     
    </ul>
  </div>
        </nav>
        
        
        <!--body of registration page-->
        
        <main class="primary-background p-5 banner-background">
            
            <div class="container">
                <div class="col-md-4 offset-md-4">
                    
                    <div class="card">
                        <div class="card-header  text-center">
                            <span class="fa fa-user-plus fa-3x"></span><br>
                            Register Here
                        </div>
                        <div class="card-body">
                            
                            <form action="registration" method="POST" id="reg-form">
                                
                                
                                
                                
                                  <div class="form-group">
                                      <label for="exampleInputUsername">Username</label>
                                      <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
                                      
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                  </div>
                                
                                 <div class="form-group">
                                     <label for="exampleInputPhone">Mobile no.</label>
                                      <input type="text" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter mobile">
                                      
                                  </div>
                                
                                
                                 <div class="form-group">
                                      <label for="exampleInputGender">Gender</label>
                                      <br>
                                      <input type="radio" name="gender"   >     Male
                                      <input type="radio" name="gender" >     Female
                                     
                                  </div>
                                
                        
                                
                                 <div class="form-group">
                                      <label for="exampleInputDescription">Description</label>
                                      <input type="text" name="description" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Description">
                                     
                                  </div>
          
                                
                                  <div class="form-check">
                                      <input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
                                      <label class="form-check-label" for="exampleCheck1">  I agree terms and conditions</label>
                                  </div><br>
                                
                                
                                  <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </main>
        
        
        
        
        
        
        
        
         <script
         src="https://code.jquery.com/jquery-3.5.1.min.js"
         integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
         crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="javascript/Myjavascript.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script> 
        
        
        <script>
            
            $(document).ready(function(){
               console.log("loaded.......") 
               
               $("#reg-form").on("submit",function(event){
                   
                   event.preventDefault();
                   
                   let form=new FormData(this);
                  
                  //send to register servlet
                  
                  $.ajax({
                      url:"registration",
                      type:"POST",
                      data:form,
                      success: function (data,textStatus,jqXHR){
                          console.log(data)
                         swal("Click on either the button or outside the modal.")
                         .then((value) => {
                         window.location="data_view.jsp"
                         });
                          
                      },
                      error:function(jqXHR,textStatus,errorThrown){
                          console.log(jqXHR)
                      },
                      processData:false;
                      contentType:false;
                  });
               });
            });
        </script>
        
        
        
        
    </body>
</html>
