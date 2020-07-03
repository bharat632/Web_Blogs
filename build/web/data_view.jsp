


<%@page import="com.entities.message"%>
<%@page import="com.entities.user"%>
<%@page errorPage="error.jsp" %>
<%
    user user=(user)session.getAttribute("currentuser");
    if(user==null)
    {
         response.sendRedirect("log_in.jsp");
    }
    


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date_Stored Page </title>
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
      </li>

   </ul>
      
      
      <ul class="navbar-nav mr-right">
          <li class="nav-item">
             <a class="nav-link" href="Log_out">Logout</a>
          </li>

          <li class="nav-item active">
              <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa "> <%= user.getUsername().toUpperCase() %></span></a>
          </li>
      </ul>
      
      
      
  </div>
        </nav>
          
          <!--navbar end-->
          
          
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
          
          
          
          <!--profile-modal-->
          
          
          
          <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
          <h5 class="modal-title" id="exampleModalLabel" style="">Welcome To DigiLocker</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container">
              <h5 class="modal-title text-center" id="exampleModalLabel" style=""><span><i class="fa fa-user-circle" style="font-size:75px;border-radius: 50%;"></i><br><%= user.getUsername().toUpperCase() %></span></h5>
              
              
              
              <!--tables details of user-->
              <div id="profile-detail">             
<table class="table">
 
  <tbody>
    <tr>
      <th scope="row">Email</th>
      <td><%= user.getEmail() %></td>
    </tr>
    <tr>
      <th scope="row">Mobile</th>
      <td><%= user.getPhone() %></td>
    </tr>
     <tr>
      <th scope="row">Description</th>
      <td><%= user.getDescription() %></td>
    </tr>
  </tbody>
</table>
                    </div>       
              <!--end of table-->
              
              <div id="profile-edit" style="display: none;">
                  
                 
                  <form action="update" method="post">
                      <table class="table">
                          <tr>
                              <td>Username</td>
                              <td><input type="text" class="form-control" name="user_name" value="<%= user.getUsername()%>" ></td>
                          </tr>
                          <tr>
                              <td>Password</td>
                              <td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>" ></td>
                          </tr>
                          <tr>
                              <td>Mobile</td>
                              <td><input type="text" class="form-control" name="user_mobile" value="<%= user.getPhone()%>" ></td>
                          </tr>
                          <tr>
                              <td>Description</td>
                              <td><input type="text" class="form-control" name="user_desc" value="<%= user.getDescription()%>" ></td>
                          </tr>     
                      </table>
                          
                          <div class="text-center">
                              <button type="submit"class="btn btn-outline-success primary-background" style="color: white;">Update Now</button>
                          </div>
                  </form>
              </div>
              
              
                          
                          
                          
                          <!--delete data table-->
                          
  <div id="profile-delete" style="display: none;">
                  
                 
                  <form action="delete" method="pos/t">
                      <table class="table">
                         
                          <tr>
                              <td>Email</td>
                              <td name="email"><%= user.getEmail() %></td>
                          </tr>
                          <tr>
                              <td>Password</td>
                              <td><input type="password" class="form-control" name="user_password"  ></td>
                          </tr>
                           
                      </table>
                          
                          <div class="text-center">
                              <button type="submit" class="btn btn-outline-success primary-background" style="color: white;">Delete</button>
                          </div>
                  </form>
              </div>
                          
                          
                          <!-- end of data delete table-->
                          
                          
                       
              
              

              
              
          </div>
      </div>
      <div class="modal-footer">
        <button id="delete-profile-button" type="button" class="btn btn-danger" >Delete</button>
        <button id="edit-profile-button" type="button" class="btn btn-primary primary-background">Edit</button>
      </div>
    </div>
  </div>
</div> 
          
          
          <!--end of profile modal-->
        
        
        <!-- body-->
        
    
            
            
            
            
        </main>
        
        
        
        
        
        
         
         <script
         src="https://code.jquery.com/jquery-3.5.1.min.js"
         integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
         crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="javascript/Myjavascript.js" type="text/javascript"></script>
        
<!--        edit button jquery
        <script>
            
            $(document).ready(function(){
               
        edit button
                let editstatus=false;
                let editdeletestatus=false;
                
                $("").click(function(){
                   if(editstatus==false)
                   {
                       $('#profile-detail').hide();
                   
                       $('#profile-edit').show();
                       
                       editstatus = true;
                       $(this).text("Cancel");
                   }  
                       
           
           
           
                   else
                   {
                      $('#profile-detail').show();
                      $('#profile-edit').hide();
                      
                      editstatus = false;
                      $(this).text("Edit");
                   }
                   });
                   end of edit button 
                    
                   delete button
 
                $('#delete-profile-btn').click(function(){
                   if(editdeletestatus==false)
                   {
                       $('#profile-detail').hide();
                   
                       $('#profile-delete').show();
                       
                       editdeletestatus = true;
                       $(this).text("Cancel");
                   } 
                    else
                   {
                      $('#profile-detail').show();
                      $('#profile-delete').hide();
                      
                      editdeletestatus = false;
                      $(this).text("Delete");
                   }
                   });
                 end of delete button
                   
            });
           
        </script>-->
        
        
        
        <script>
                    $(document).ready(function(){
                    
                    let editstatus=false;
                    let deletestatus=false;
                    $('#edit-profile-button').click(function(){
                    if(editstatus==false)
                    {
                         $('#profile-detail').hide();
                         $('#profile-delete').hide();
                         $('#profile-edit').show();
                         editstatus=true;
                         $(this).text("Cancel")
                    }
                    else{
                        
                         $('#profile-detail').show();
                         $('#profile-delete').hide();
                         $('#profile-edit').hide();
                         editstatus=false;
                         $(this).text("Edit")
                    }
                    });
                    
                   //delete button
                   
                   $('#delete-profile-button').click(function(){
                      if(deletestatus==false)
                      {
                          $('#profile-detail').hide();
                          
                          $('#profile-delete').show();
                          deletestatus=true;
                          $(this).text("Cancel")
                      }
                      else{
                          $('#profile-detail').show();
                          
                          $('#profile-delete').hide();
                          deletestatus=false;
                          $(this).text("Delete")
                      }
                   });
                    
    });
        </script>
                    
        
        
     
        
        
    </body>
</html>
