<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Toll Page</title>
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
                            <a href="Admin_login.jsp" class="navbar-brand">TollPlaza</a>
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
                        <h2 class="head-title">Edit Toll Page</h2>
                        <hr class="botm-line">
                        
						<form:form class="form-horizontal" role="form" action="/SimpleProjectLogin/editsavetoll" name="myForm" onsubmit="return(Validation());" id="RegisterForm" method="post">
						
               
                <div class="form-group">
                    <label for="tollid" class="col-sm-3 control-label">Toll ID</label>
                    <div class="col-sm-9">
                        <form:input type="text" path="tollid" id="tollid"  class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollname" class="col-sm-3 control-label">Toll Name</label>
                    <div class="col-sm-9">
                        <form:input type="text" path="tollname" id="tollname" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="tolladdress" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        <form:input type="text" path="tolladdress" id="tolladdress" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollowner" class="col-sm-3 control-label">Toll Owner</label>
                    <div class="col-sm-9">
                        <form:input type="text" path="tollowner" id="tollowner" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="tollstartdate" class="col-sm-3 control-label">Toll Start Date</label>
                     <div class="col-sm-9"> 
                        <form:input id="datepicker" path="tollstartdate" class="form-control" style="color: black;" />eg.mm/dd/yy
                    </div>
                </div><br>
                
                 <!-- /.form-group -->
                 <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Save</button>
                    </div>
                </div>
            </form:form> <!-- /form -->
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

<%-- <h1>Edit Toll</h1>
<form:form method="POST" action="/SimpleProjectLogin/editsavetoll">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="tollid" /></td>  
         </tr>   
         <tr>    
          <td>Toll Name : </td>   
          <td><form:input path="tollname"  /></td>  
         </tr>    
         <tr>    
          <td>Toll Address :</td>    
          <td><form:input path="tolladdress" /></td>  
         </tr>   
         <tr>    
          <td>Toll Owner :</td>    
          <td><form:input path="tollowner" /></td>  
         </tr>   		
          <tr>    
          <td>Toll Start Date :</td>    
          <td><form:input path="tollstartdate" /></td>  
         </tr>             
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>     --%>


</body>
</html>