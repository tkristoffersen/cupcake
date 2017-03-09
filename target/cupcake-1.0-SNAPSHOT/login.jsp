<%-- 
    Document   : login
    Created on : Mar 5, 2017, 9:16:58 PM
    Author     : Tommy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
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
                        <li class="active"><a href="login.jsp">Login</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="jumbotron">
            <div class="container text-center">
                <h2>Login here:<br></h2>
            </div>
        </div>
        <form action="Controller" method="post">
            <div class="container text-center">
                <input type="hidden" name="origin" value="login">
                <p>Username:<br><input type="text" name="username" value="" placeholder=""></p>
                <p>Password:<br><input type="password" name="password" value="" placeholder=""></p>
                <button type="submit" class="btn btn-default" name="Login" value="Log in">Log me in</button>
            </div>
        </form>
    </body>
</html>
