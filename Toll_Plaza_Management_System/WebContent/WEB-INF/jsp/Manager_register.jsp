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
<script type="text/javascript">
function Validation() {	
    var x;
    x = document.myform.managerid.value;

    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 1 || x > 10000) {
    	alert( "Please provide your Manager id!" );
        document.myform.managerid.focus() ;
        return false;
    }
	
    if(myform.password.value != "") {
        if(myform.password.value.length < 6) {
          alert("Error: Password must contain at least six characters!");
          myform.password.focus();
          return false;
        }
        re = /[0-9]/;
        if(!re.test(myform.password.value)) {
          alert("Error: password must contain at least one number (0-9)!");
          myform.password.focus();
          return false;
        }
        re = /[a-z]/;
        if(!re.test(myform.password.value)) {
          alert("Error: password must contain at least one lowercase letter (a-z)!");
          myform.password.focus();
          return false;
        }
        re = /[A-Z]/;
        if(!re.test(myform.password.value)) {
          alert("Error: password must contain at least one uppercase letter (A-Z)!");
          myform.password.focus();
          return false;
        }
      } else {
        alert("Error: Please check that you've entered and confirmed your password!");
        myform.password.focus();
        return false;
      }
    var y = document.forms["myform"]["email"].value;
    var atpos = y.indexOf("@");
    var dotpos = y.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=y.length) {
        alert("Not a valid e-mail address");
        return false;
    }

    /* CONTACT NO. VALIDATION */
	if( document.myform.contact.value.length!=10 )
    {
       alert( "Please provide your Contact!" );
       document.myform.contact.focus() ;
       return false;
    } 
	if( document.myform.tollid.value == "" )
    {
       alert( "Please provide your Id!" );
       document.myform.tollid.focus() ;
       return false;
    }
	if( document.myform.infoid.value == "" )
    {
       alert( "Please provide your Id!" );
       document.myform.infoid.focus() ;
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
                        
						<form class="form-horizontal" role="form" action="Manager_save"  name="myform" onsubmit="return(Validation());" id="RegisterForm"  method="post">
						
               
                <div class="form-group">
                    <label for="userid" class="col-sm-3 control-label">Manager Id</label>
                    <div class="col-sm-9">
                        <input type="text" name="managerid" id="userid" placeholder="Manager ID" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="pass" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" id="pass" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="text" name="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="contact" class="col-sm-3 control-label">Contact</label>
                    <div class="col-sm-9">
                        <input type="text" name="contact" id="contact" placeholder="Contact" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="toll_id" class="col-sm-3 control-label">Toll Id</label>
                    <div class="col-sm-9">
                        <input type="text" name="tollid" id="toll_id" placeholder="Toll Id" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="info_id" class="col-sm-3 control-label">Info ID</label>
                    <div class="col-sm-9">
                        <input type="text" name="infoid" id="info_id" placeholder="Info Id" class="form-control" autofocus>
                    </div>
                </div>
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