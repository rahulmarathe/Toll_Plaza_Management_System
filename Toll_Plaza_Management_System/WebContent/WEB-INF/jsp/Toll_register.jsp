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
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script> 
     <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>
     
     
     <script type="text/javascript">
function Validation()
{

	 var x;

	    x = document.myForm.TollId.value;

	    // If x is Not a Number or less than one or greater than 10
	    if (isNaN(x) || x < 1 || x > 10000) {
	    	alert( "Please provide your Toll id!" );
	        document.myForm.TollId.focus() ;
	        return false;
	    }
	    
	
   
   if( document.myForm.TollName.value == "" )
   {
      alert( "Please provide your Toll Name!" );
      document.myForm.TollName.focus() ;
      return false;
   } 
   
   
   
   if( document.myForm.TollAddress.value == "" )
   {
      alert( "Please provide your Toll Address!" );
      document.myForm.TollAddress.focus() ;
      return false;
   }
   if( document.myForm.TollOwner.value == "" )
   {
      alert( "Please provide your Toll Owner!" );
      document.myForm.TollOwner.focus() ;
      return false;
   }
   if( document.myForm.TollStartDate.value == "" )
   {
      alert( "Please provide your Toll Startdate!" );
      document.myForm.TollStartDate.focus() ;
      return false;
   }
}

</script>
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
                        <h2 class="head-title">Register Page</h2>
                        <hr class="botm-line">
                        
						<form class="form-horizontal" role="form" action="Toll_save"  name="myForm" onsubmit="return(Validation());" id="RegisterForm"  method="post">
						
               
                <div class="form-group">
                    <label for="tollid" class="col-sm-3 control-label">Toll ID</label>
                    <div class="col-sm-9">
                        <input type="text" name="tollid" id="tollid" placeholder="Toll ID" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollname" class="col-sm-3 control-label">Toll Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="tollname" id="tollname" placeholder="Toll Name" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="tolladdress" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        <input type="text" name="tolladdress" id="tolladdress" placeholder="Toll Address" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollowner" class="col-sm-3 control-label">Toll Owner</label>
                    <div class="col-sm-9">
                        <input type="text" name="tollowner" id="tollowner" placeholder="Toll Owner" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollstartdate" class="col-sm-3 control-label">Toll Start Date</label>
                     <div class="col-sm-9"> 
                        <input id="datepicker" name="tollstartdate" class="form-control" style="color: black;">eg.mm/dd/yy
                    </div>
                </div><br>
                
                 <!-- /.form-group -->
                 <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                </div>
            </form> <!-- /form -->
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