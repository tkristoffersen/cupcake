<%-- 
    Document   : orderview
    Created on : Mar 3, 2017, 1:11:55 PM
    Author     : Tommy
--%>

<%@page import="data.Bottom"%>
<%@page import="data.Topping"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Your order:</title>
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
                        <li class="active"><a href="#">Your order</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account / <% out.println(session.getAttribute("username"));%></a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="jumbotron">
            <div class="container text-center">
                <h2>DIN BESTILLING:<br></h2>
            </div>
        </div>

        <div class="container text-center">
            <%
                try {
                    Topping top = (Topping) session.getAttribute("top");
                    Bottom bot = (Bottom) session.getAttribute("bot");
                    

            %>
            <p><h2><% out.println(session.getAttribute("username"));%></h2></p>
            <p><h2><strong>Du har bestilt</strong></h2></p>
        <p><strong>Topping: </strong><%out.println(top.getTopping());%> til <%out.println(top.getT_price());%>Kr.</p>
        <p><strong>Bottom: </strong> <% out.println(bot.getBottom()); %> til <%out.println(bot.getB_price());%>Kr.</p>
        <hr>
        <p><h2>Samlet beløb:</h2></p>
        <%out.println(top.getT_price() + bot.getB_price());%> Kr.<br><hr>
    


        <%
            } catch (NullPointerException ex) {
            }
        %>
        </div>
        <div class="container text-center">
            <a href="login.jsp" class="btn btn-default" role="button">Login and Pay</a>
        </div>
</body>
</html>
