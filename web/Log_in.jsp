<%-- 
    Document   : Log_in
    Created on : Jun 1, 2020, 6:02:14 PM
    Author     : Bharat
--%>

<%@page import="com.entities.message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log_In_Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/Mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
             clip-path: polygon(0 0, 100% 0, 100% 30%, 100% 81%, 84% 98%, 18% 85%, 0 100%, 0% 30%);



        </style>
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
      </li>
       <li class="nav-item">
        <a class="nav-link" href="sign_up.jsp">signUp</a>
      </li>
     
    </ul>
  </div>
        </nav>
               
               
               <!--body of login page-->
               
               
               <main class="d-flex align-items-center primary-background banner-background" style="height:80vh">
                   
                   <div class="container">
                       <div class="row">
                           <div class="col-md-4 offset-md-4">
                               <div class="card">
                                   <div class="card-header primary-background text-white text-center">
                                       <span class="fa fa-user-circle fa-3x"></span><br>
                                       <p>LOGIN Here</p>
                                   </div>
                                   
                                   <!--invalid msg throw-->
                                   
                                   <%
                                      message m=(message)session.getAttribute("msg");
                                       if(m!=null){
                                           
                                           %>
                                           
                                            <div class="alert <%= m.getCssclass() %>" role="alert">
                                               <%=m.getMsg() %>
                                            </div>
                                           
                                           <%
                                               
                                               session.removeAttribute("msg");
                                               
                                       }
                                       
                                       
                                       %>
                                       
                                   
                                   
                                   <div class="card-body">
                                       <form action="login" method="POST">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" name="password" required class="form-control" id="exampleInputPassword1" placeholder="Password" required="required">
                                            </div>
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1" required="required">
                                                <label class="form-check-label" for="exampleCheck1">I agree terms and conditions</label>
                                            </div><br>
                                                 <button type="submit" class="btn btn primary-background text-white">Submit</button>
                                        </form>
                                       
                                   </div>
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
       
          
               
    </body>
</html>
