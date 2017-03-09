<%-- 
    Document   : index
    Created on : Mar 1, 2017, 10:09:56 AM
    Author     : Tommy
--%>

<%@page import="data.Bottom"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.Topping"%>
<%@page import="mappers.Cakemapper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>The Cakehouse</title>
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
                        <li class="active"><a href="#">Home</a></li>
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
                <h2>THE CAKEHOUSE<br></h2>
            </div>
        </div>
            <form action="ControlCake" method="post">
                <div class="container"> 
                    <h3>Toppings:</h3>
                    <div class="row">
                        <%
                            try {
                                Cakemapper tm = new Cakemapper();
                                ArrayList<Topping> toppings = tm.getToppings();
                                for (Topping t : toppings) {
                                    int t_id = t.getT_id();
                                    try {
                                        t_id = Integer.parseInt("top");
                                    } catch (Throwable exe) {

                                    }
                        %>

                        <div class="col-sm-2"> 
                            <div class="panel panel-success">
                                <div class="panel-heading text-center"><% out.println(t.getTopping()); %></div>
                                <div class="panel-body cakeimg"><img src="images/<% out.println(t.getT_image()); %>" class="img-responsive" style="width:100%" alt="Image"></div>
                                <div class="panel-footer text-center"><% out.println(t.getT_price() + ",-");%></div>
                                <div class="radio text-center"><label><input type="radio" name="top" value="<%=t_id%>" checked></label></div>
                            </div>
                        </div>
                        <%
                                }
                            } catch (Exception ex) {

                            }
                        %>
                    </div>
                    <h3>Bottoms:</h3>
                    <div class="row">
                        <%
                            try {
                                Cakemapper bm = new Cakemapper();
                                ArrayList<Bottom> bottoms = bm.getBottoms();
                                for (Bottom b : bottoms) {
                                    int b_id = b.getB_id();
                                    try {
                                        b_id = Integer.parseInt("bot");
                                    } catch (Throwable exe) {

                                    }
                        %>

                        <div class="col-sm-2"> 
                            <div class="panel panel-success">
                                <div class="panel-heading text-center"><% out.println(b.getBottom()); %></div>
                                <div class="panel-body cakeimg"><img src="images/<% out.println(b.getB_image()); %>" class="img-responsive" style="width:100%" alt="Image"></div>
                                <div class="panel-footer text-center"><% out.println(b.getB_price() + ",-");%></div>
                                <div class="radio text-center"><label><input type="radio" name="bot" value="<%=b_id%>" checked></label></div>
                            </div>
                        </div>
                        <%
                                }
                            } catch (Exception ex) {

                            }
                        %>
                    </div>


                    <button type="submit" class="btn btn-default">Bestil min Cupcake</button>
            </form><br>
        </div>
        <div>
            <footer></footer>
        </div>

    </body>
</html>

