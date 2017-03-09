<%-- 
    Document   : loginview
    Created on : Mar 5, 2017, 11:03:17 PM
    Author     : Tommy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login confirm:</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="http://thepartybakery.com/wp-content/uploads/2016/10/TPB-Pink-Cupcake.png"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a href="#"> <img src="http://thepartybakery.com/wp-content/uploads/2016/10/TPB-Pink-Cupcake.png" style="width: 45px; height: 45px; padding: 5px;"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <% out.println(session.getAttribute("username"));%></a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="jumbotron">
            <div class="container text-center">
                <h2>WELLCOME: <% out.println(session.getAttribute("username"));%><br></h2>
            </div>
        </div>
        <div class="container text-center">
            <h3>Your password is:</h3>
            <h4>
                <strong>
                    <% out.println(session.getAttribute("password"));%>
                </strong>
            </h4>
        </div>
        <div class="container text-center">
            <a href="index.jsp" class="btn btn-info" role="button">Now Order your Cupcake</a>
        </div>

    </body>
</html>
