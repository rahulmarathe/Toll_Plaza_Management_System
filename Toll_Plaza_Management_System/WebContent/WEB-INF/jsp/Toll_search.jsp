<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Search toll</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <jsp:include page="/links.jsp"></jsp:include>
    <!-- =======================================================
        Project Name: TollPlazas
        Project URL: http://localhost:8081/SimpleProjectLogin/
        Author: amplesoftech.com
        Author URL: https://amplesoftech.com
    ======================================================= -->
      <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #origin-input,
      #destination-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 200px;
      }

      #origin-input:focus,
      #destination-input:focus {
        border-color: #4d90fe;
      }

      #mode-selector {
        color: #fff;
        background-color: #4d90fe;
        margin-left: 12px;
        padding: 5px 11px 0px 11px;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

    </style>
     <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
	
        // In the following example, markers appear when the user clicks on the map.
      // Each marker is labeled with a single alphabetical character.
      /* var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      var labelIndex = 0; */
      var map;
      var marker;
      var infowindow;
      var messagewindow;
      function initMap() {  
          var bangalore = { lat: 12.97, lng: 77.59 };
           map = new google.maps.Map(document.getElementById('map'), {
        	  mapTypeControl: false,
        	  zoom: 12,
            center: bangalore
        });
          /* google.maps.event.addListener(map, 'click', function(event) {
              addMarker(event.latLng, map);
            });

            // Add a marker at the center of the map.
            addMarker(bangalore, map);*/
            
            infowindow = new google.maps.InfoWindow({
                content: document.getElementById('form')
              });
 
              messagewindow = new google.maps.InfoWindow({
                content: document.getElementById('message')
              });

              google.maps.event.addListener(map, 'click', function(event) {
                marker = new google.maps.Marker({
                  position: event.latLng,
                  map: map
                });


                google.maps.event.addListener(marker, 'click', function() {
                  infowindow.open(map, marker);
                });
              });
              
        /* new addMarker(location, map); */
        new AutocompleteDirectionsHandler(map);
     /*    new saveData(); */
        new downloadUrl(url, callback);
      }
		

      // Adds a marker to the map.
      /* function addMarker(location, map) {
          // Add the marker at the clicked location, and add the next-available label
          // from the array of alphabetical characters.
          var marker = new google.maps.Marker({
            position: location,
            label: labels[labelIndex++ % labels.length],
            map: map
          });
        } */
       /**
        * @constructor
       */
      
       function saveData() {
        	
           var name = escape(document.getElementById('name').value);
          // document.getElementById("demo").innerHTML = name;
           var address = escape(document.getElementById('address').value);
          // document.getElementById("demo").innerHTML = address;
           var type = document.getElementById('type').value;
           var latlng = marker.getPosition();
            window.location.replace('database.jsp?name=' + name + '&address=' + address +
                     '&type=' + type + '&lat=' + latlng.lat() + '&lng=' + latlng.lng());
          
          
         }

         
       
      function AutocompleteDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'WALKING';
        var originInput = document.getElementById('origin-input');
        var destinationInput = document.getElementById('destination-input');
        var modeSelector = document.getElementById('mode-selector');
        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer;
        this.directionsDisplay.setMap(map);

        //To 
        var originAutocomplete = new google.maps.places.Autocomplete(
            originInput, {placeIdOnly: true});
        var destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput, {placeIdOnly: true});

        this.setupClickListener('changemode-walking', 'WALKING');
        this.setupClickListener('changemode-transit', 'TRANSIT');
        this.setupClickListener('changemode-driving', 'DRIVING');

        this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
        this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
      }

      // Sets a listener on a radio button to change the filter type on Places
      // Autocomplete.
      AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
        var radioButton = document.getElementById(id);
        var me = this;
        radioButton.addEventListener('click', function() {
          me.travelMode = mode;
          me.route();
        });
      };

      AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('place_changed', function() {
          var place = autocomplete.getPlace();
          if (!place.place_id) {
            window.alert("Please select an option from the dropdown list.");
            return;
          }
          if (mode === 'ORIG') {
            me.originPlaceId = place.place_id;
          } else {
            me.destinationPlaceId = place.place_id;
          }
          me.route();
        });

      };

      AutocompleteDirectionsHandler.prototype.route = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
          return;
        }
        var me = this;

        this.directionsService.route({
          origin: {'placeId': this.originPlaceId},
          destination: {'placeId': this.destinationPlaceId},
          travelMode: this.travelMode
        }, function(response, status) {
          if (status === 'OK') {
        	  
        	  
/*         	  
            for(var i=0; i<arr.length; i++){
            	var location = {lat: arr[i].latitude, lng: arr[i].longitude};
            	var marker = new google.maps.Marker({
                    position: location,
                    label: labels[labelIndex++ % labels.length],
                    map: map
                  });            	
            }
 */            
            
            me.directionsDisplay.setDirections(response);
 var script = document.createElement('script');
 // This example uses a local copy of the GeoJSON stored at
 // http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_week.geojsonp
 script.src = 'https://developers.google.com/maps/documentation/javascript/examples/json/earthquake_GeoJSONP.js';
 document.getElementsByTagName('head')[0].appendChild(script);


// Loop through the results array and place a marker for each
// set of coordinates.
window.eqfeed_callback = function(results) {
 for (var i = 0; i < results.features.length; i++) {
   var coords = results.features[i].geometry.coordinates;
   var latLng = new google.maps.LatLng(coords[1],coords[0]);
   marker = new google.maps.Marker({
     position: latLng,
     map: map
   });
 }
}
            
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      };
     
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeNxcq4ZUISwn8ggXJ3sTpQgta4urgih0&libraries=places&callback=initMap"
        async defer></script>
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
                            <a href="boot.jsp" class="navbar-brand">TollPlaza</a>
                        </div>
                        <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#header">Home</a></li>
                                <li><a href="boot.jsp">Main</a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
           
            
        </div>
    </header>
     
     
   <!-- 
    <br>
    <section class="google_map">
				<iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.5831656332516!2d73.79342331433784!3d18.502530987419537!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bfc5ccd4abe1%3A0xbed81de433d7778a!2sAmple+SofTech!5e0!3m2!1sen!2sin!4v1478668859590"></iframe>
			</section> -->

    
    
        <section class="section-padding wow fadeInUp delay-02s" id="login">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12" >
                    <div class="section-title">
                        <h2 class="head-title">Search toll</h2>
                        <hr class="botm-line">
                        <span id="errorMessage"></span>
                         <div class="form-group">
						<!-- <form action="/SimpleProjectLogin/view_toll" onsubmit="return(Validation());" name="myform" id="myform"  method="post">
							 <div class="form-group">
								Source Name<input type="text"  class="form-control" id="sname"  name="sname">
							</div>
							
							 <div class="form-group">
								Destination Name<input type="text"  class="form-control" id="dname"  name="dname">
							</div>
							               <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Search</button>
                    </div>
                </div>
  	
						</form> -->
						
						<p id="demo"></p>
<input id="origin-input" class="controls" type="text"
        placeholder="Enter an origin location">

    <input id="destination-input" class="controls" type="text"
        placeholder="Enter a destination location">

    <div id="mode-selector" class="controls">
      <input type="radio" name="type" id="changemode-walking" checked="checked">
      <label for="changemode-walking">Walking</label>

      <input type="radio" name="type" id="changemode-transit">
      <label for="changemode-transit">Transit</label>

      <input type="radio" name="type" id="changemode-driving">
      <label for="changemode-driving">Driving</label>
    </div>
	
    <div id="map"></div>
	<div id="form">
	
      <table>
      <tr><td>Name:</td> <td><input type='text' name="name" id='name'/> </td> </tr>
      <tr><td>Address:</td> <td><input type='text' name="address" id='address'/> </td> </tr>
      <tr><td>Type:</td> <td><select id='type' name="type">
                 <option value='toll' SELECTED>TOLL</option>
                 <option value='restaurant'>restaurant</option>
                 </select> </td></tr>
                 <tr><td></td><td><input type='button' value='Save' onclick='saveData()'/></td></tr>
      </table>
    
    </div>
    <div id="message">Location saved</div> 
						
						
						
						
                  		</div>
                    </div>
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