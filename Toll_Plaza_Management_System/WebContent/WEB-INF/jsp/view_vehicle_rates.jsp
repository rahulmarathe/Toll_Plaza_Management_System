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
                            <a href="Manager.jsp" class="navbar-brand">TollPlaza</a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#header">Home</a></li>
                                
                                <c:if test="${emp.username==null }">
	                                <li><a href="logout">Logout</a></li>                                
                                </c:if>
                               
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
           
            
        </div>
    </header>
    <!--/ header-->
            <section class="section-padding wow fadeInUp delay-02s" id="login">
        <div class="container">
            <div class="row">
             		<div class="col-md-8 col-sm-12">
                        <h2 class="head-title">View Toll Rates Page</h2>
                        <hr class="botm-line">
            			<h2>Welcome...</h2>
            			
   						
   						<table class="table table-bordered table-responsive table-hover table-striped" width="70%" cellpadding="2"> 
	                	<thead>
	                		<tr><th>Type of Vehicle</th><th>Journey Type</th><th>Toll Id</th><th>Amount</th><th>Edit</th><th>Delete</th></tr>
	                	</thead>
	                	<tbody>
	                		<c:forEach items="${list}" var="emp">   
						   <tr>  
							   <td>${emp.typeofvehicle}</td>  
							   <td>${emp.journeytype}</td>  
							   <td>${emp.tollid}</td>
							   <td>${emp.amount}</td>  
							   <td><a href="editrates/${emp.tollid}">Edit</a></td>
							   <td><a href="deleterates/${emp.tollid},${emp.typeofvehicle}">Delete</a></td>						        
						   </tr>  
						   </c:forEach>  	
	                	</tbody>
	   				</table>
            			
                </div>
            </div>
        </div>
    </section>
    
    
        
    
     
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
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!---->
    <!--validation script-->

  </body>
</html>