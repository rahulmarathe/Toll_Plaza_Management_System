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
                            <img alt="" src="F:\Java All Projects\Toll_Plaza Project\SimpleProjectLogin\WebContent\img\1200x630bb.jpg" height="50px" width="50px"><a href="#" class="navbar-brand">TollPlaza</a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#header">Home</a></li>
                                <li><a href="#feature">Feature</a></li>
                                <li><a href="#gallery">Gallery</a></li>
                                <c:if test="${emp.username==null }">
	                                <li><a href="/Toll_Plaza_Management_System/Customer">Login</a></li>                                
                                </c:if>
                                <c:if test="${emp.username!=null }">
    	                            <li><a href="/SimpleProjectLogin/logout">Logout</a></li>                                
                                </c:if>
                                <li><a href="#contact">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!--/ nav-->
            <div class="container text-center">
                <div class="wrapper wow fadeInUp delay-05s" >
                 <div class="section-title">
                       
                    
                    <h3 class="title">TollPlaza</h3>
                    
                    <!-- <button type="submit" class="btn btn-submit">Download Now</button> -->
                </div>
            </div>
            </div>
        </div>
    </header>
    <!--/ header-->
    <!---->
    <section id="cta-1">
        <div class="container">
            <div class="row">
                <div class="cta-info text-center">
                    <h3><span class="dec-tec">“</span>Everything is designed. Few things are designed well.<span class="dec-tec">”</span> -Brian Reed</h3>
                </div>
            </div>
        </div>
    </section>
    <!---->
    <!---->
    <section id="feature" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-3 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">Features</h2>
                        <hr class="botm-line">
                        <p class="sec-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="col-md-6 wow fadeInRight delay-02s">
                        <div class="icon">
                            <i class="fa fa-paint-brush"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">Easy to Learn and Design</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInRight delay-02s">
                        <div class="icon">
                            <i class="fa fa-cogs"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">Bootstrap 3.3.2</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInRight delay-04s">
                        <div class="icon">
                            <i class="fa fa-mobile"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">Responsive Design</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInRight delay-04s">
                        <div class="icon">
                            <i class="fa fa-desktop"></i> 
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">No Coding, No Shortcodes</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInRight delay-06s">
                        <div class="icon">
                            <i class="fa fa-lightbulb-o"></i> 
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">High Coversion</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInRight delay-06s">
                        <div class="icon">
                            <i class="fa fa-clock-o"></i>
                        </div>
                        <div class="icon-text">
                            <h3 class="txt-tl">Save Tons of Time</h3>
                            <p class="txt-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula felis euismod semper. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!---->
    <section class="section-padding parallax bg-image-2 section wow fadeIn delay-08s" id="cta-2">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="cta-txt">
                        <h3>Subscribe For Updates</h3>
                        <p>Join our 1000+ subscribers and get access to the latest tools, freebies, product announcements and much more!</p>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <a href="#" class="btn btn-submit">Subscribe Now</a>
                </div>
            </div>
        </div>
    </section>
    <!---->
    <!---->
    <section class="section-padding wow fadeInUp delay-02s" id="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="section-title">
                        <h2 class="head-title">gallery</h2>
                        <hr class="botm-line">
                        <p class="sec-para">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                    </div>
                </div>
                <div class="col-md-9 col-sm-12">
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/_9e89bfea-2042-11e7-a5a9-704c25d3160d.JPG" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/hindustan-gurgaon-haryana-gurgaon-gashroo-faridabad-officers_f98f0854-33d0-11e7-b30b-76e7402dac55.JPG" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/Chennai_Highway_Toll-EPS.jpeg" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/Toll_booths_in_the_UK.jpg" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/Toll-Plaza.jpg" alt="" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 padding-right-zero">
                        <div class="portfolio-box design">
                            <img src="img/toll-afp.jpg" alt="" class="img-responsive">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!---->
        <section class="section-padding wow fadeInUp delay-02s" id="login">
        <div class="container">
            <!-- <div class="row">
                <div class="col-md-4 col-sm-12">
                    <h2 class="head-title">Login Page</h2>
                        <hr class="botm-line">
                        <span id="errorMessage"></span>
                         <div class="form-group">
						<form action="/SimpleProjectLogin/Customer_login" onsubmit='return(validation())' name="loginForm" id="loginForm"  method="post">
							 <div class="form-group">
								Username<input type="text"  class="form-control" id="username" required="required" name="username">
							</div>
							
							 <div class="form-group">
								Password<input type="password"  class="form-control" id="password" required="required" name="password">
							</div>
							               <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </div>
                </div>
  	
						</form>
                  		</div>

                </div>
 -->                <div class="col-md-8 col-sm-12">
                        <h2 class="head-title">Register Page</h2>
                        <hr class="botm-line">
                        
						<form class="form-horizontal" role="form" action="/SimpleProjectLogin/register"  name="RegisterForm" id="RegisterForm"  method="post">
						
               
                <div class="form-group">
                    <label for="userid" class="col-sm-3 control-label">User ID</label>
                    <div class="col-sm-9">
                        <input type="number" name="userid" id="userid" placeholder="User ID" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" name="password" id="password" placeholder="Password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" name="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="firstname" id="firstname" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastname" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                        <input type="text" name="lastname" id="lastname" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                    </div>
                     <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        <input type="text" name="address" id="address" placeholder="Address" class="form-control" autofocus>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label for="city" class="col-sm-3 control-label">City</label>
                    <div class="col-sm-9">
                        <input type="text" name="city" id="city" placeholder="City" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="state" class="col-sm-3 control-label">State</label>
                    <div class="col-sm-9">
                        <input type="text" name="state" id="state" placeholder="State" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-9">
                        <select id="country" name="country" class="form-control">
                        	 <option>India</option>
                        	  <option>China</option>
                        	   <option>Pakistan</option>
                            <option>Afghanistan</option>
                            <option>Bahamas</option>
                            <option>Cambodia</option>
                            <option>Denmark</option>
                            <option>Ecuador</option>
                            <option>Fiji</option>
                            <option>Gabon</option>
                            <option>Haiti</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="femaleRadio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="maleRadio" value="Male">Male
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="uncknownRadio" value="Unknown">Unknown
                                </label>
                            </div>
                        </div>
                    </div>
                    
                </div>
 
                               
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">Date Of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" name="birthDate" id="birthDate" class="form-control">
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
    
    
    <!---->
    <section class="section-padding wow fadeInUp delay-05s" id="contact">
        <div class="container">
            <div class="row white">
                <div class="col-md-8 col-sm-12">
                    <div class="section-title">
                        <h2 class="head-title black">Contact Us</h2>
                        <hr class="botm-line">
                        <p class="sec-para black">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12">
                    <div class="col-md-4 col-sm-6" style="padding-left:0px;">
                        <h3 class="cont-title">Email Us</h3>
                        <div id="sendmessage">Your message has been sent. Thank you!</div>
                        <div id="errormessage"></div>
                        <div class="contact-info">
                            <form action="" method="post" role="form" class="contactForm">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validation"></div>
                                </div>
                                
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                    <div class="validation"></div>
                                </div>
                                <button type="submit" class="btn btn-send">Send</button>
                            </form>
                        </div>
                        
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <h3 class="cont-title">Visit Us</h3>
                        <div class="location-info">
                            <p class="white"><span aria-hidden="true" class="fa fa-map-marker"></span>Ample softech System pvt.ltd</p>
                            <p class="white"><span aria-hidden="true" class="fa fa-phone"></span>Phone: 8956572027</p>
                            <p class="white"><span aria-hidden="true" class="fa fa-envelope"></span>Email: <a href="" class="link-dec">amplehr@gmail.com</a></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact-icon-container hidden-md hidden-sm hidden-xs">
                            <span aria-hidden="true" class="fa fa-envelope-o"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!---->
    <!---->
    <footer class="" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 footer-copyright">
                <a href="Admin">Admin</a>
                <a href="Manager">Manager</a>
                    <p>© Copyrights - All rights reserved</p>
                    <div class="credits">
                        
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
    <!--contact ends-->
    <script type="text/javascript">
	function validation() {
		var name=document.loginForm.username.value;
		var password=document.loginForm.password.value;
		var n1=name.split(' ').join('+');
		var p1=password.split(' ').join('+');
//		document.getElementById("errorMessage").innerHTML="Login Field should not be blank..";
		if(name=="" || n1!=name){
			document.getElementById("errorMessage").innerHTML="username Field should not be blank or with spaces..";
			window.alert("username Field should not be blank or with spaces..");
			document.loginForm.username.focus();
			return false;
		}
		if(password=="" || p1!=password){
			document.getElementById("errorMessage").innerHTML="password Field should not be blank or with spaces..";
			window.alert("Password Field should not be blank or with spaces..");
			document.loginForm.password.focus();
			return false;
		}
		return true;
	}
</script> 
  </body>
</html>