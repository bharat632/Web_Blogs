<%-- 
    Document   : error
    Created on : Jun 11, 2020, 5:48:37 PM
    Author     : Bharat
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/Mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>sorry ! something went wrong</title>
    </head>
    <body>
        <div class="container text-center">
            <img src="img/" class="img-fluid">
            <h1 class="display-3">sorry ! something went wrong</h1>
            <%=  exception %>
            <a href="index.jsp" class="btn btn-lg text-center text-white primary-background mt-3">Home</a>
        </div>
    </body>
</html>
