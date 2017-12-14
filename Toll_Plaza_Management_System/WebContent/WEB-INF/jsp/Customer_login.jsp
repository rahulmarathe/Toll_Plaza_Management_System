<%-- <html>
<body>
<a href="logout">Logout</a>
<h1  style="color: green">Login success</h1>
<h3  style="color: red">welcome to tollplaza</h3>
<h2>${msg}</h2>
</body>
</html> --%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <jsp:include page="/links.jsp"></jsp:include>
    <!-- =======================================================
        Project Name: TollPlazas
        Project URL: http://localhost:8081/SimpleProjectLogin/
        Author: amplesoftech.com
        Author URL: https://amplesoftech.com
    ======================================================= -->
  </head>
  <body>
    <!--header-->
    <header class="main-header" id="header">
        <div class="bg-color">
            <!--nav-->
            <nav class="nav navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="col-md-12">
                        <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                            <span class="fa fa-bars"></span>
                        </button>
                            <a href="#" class="navbar-brand">TollPlaza</a>
                        </div>
                        <h1  style="color: green">Login success</h1>
                        <h3  style="color: orange">welcome to tollplaza</h3>
                        
                        <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#header">Home</a></li>
                                <li><a href="Toll_search">Search Toll</a></li>
                                <li><a href="Transaction">Transaction History</a></li>
                               <!--  <li><a href="Profile">Profile</a></li>
                                <li><a href="view_toll">View Toll</a></li>
                                -->
                                <c:if test="${emp.email==null }">
	                                <li><a href="LoginForm">Logout</a></li>                                
                                </c:if>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
           
            
        </div>
    </header>
    <!--/ header-->     
    <footer class="" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 footer-copyright">
                
                    <p>© Copyrights - All rights reserved</p>
                    <div class="credits">
                        <!-- 
                            All the links in the footer should remain intact. 
                            You can delete the links only if you purchased the pro version.
                            Licensing information: https://bootstrapmade.com/license/
                            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Bethany
                        -->
                        Designed by <a href="https://bootstrapmade.com/">Ample Softech Pvt. Ltd.</a>
                    </div>
                </div>
                <div class="col-sm-5 footer-social">
                    <div class="pull-right hidden-xs hidden-sm">
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                        <a href="https://dribbble.com/session/new"><i class="fa fa-dribbble"></i></a>
                        <a href="https://mobile.twitter.com/login"><i class="fa fa-twitter"></i></a>
                        <a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a>
                        <a href="https://in.pinterest.com/login/"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!---->
    <!--contact ends-->
 
  </body>
</html>