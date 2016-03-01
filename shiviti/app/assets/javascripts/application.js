// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){

$('.location').on('click', function() {
	getLocation();
});

// This is the html5 geolocater 

	var x = document.getElementById("error");
	function getLocation() {
	    if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	    } else {
	        x.innerHTML = "Geolocation is not supported by this browser.";
	    }
	}
	function showPosition(position) {
		lat = position.coords.latitude;
		long = position.coords.longitude;
	    // x.innerHTML = "Latitude: " + position.coords.latitude + 
	    // "<br>Longitude: " + position.coords.longitude; 
	    initMap(lat,long)
	}

	

 //This is the google maps nearby search for parks in js 

	var map;
	var infowindow;

	  function initMap(lat, long) {
	    var pyrmont = {lat: lat, lng: long}; 

	    map = new google.maps.Map(document.getElementById('map'), {
	      center: pyrmont,
	      zoom: 15
	    });

	    infowindow = new google.maps.InfoWindow();
	    var service = new google.maps.places.PlacesService(map);
	    service.nearbySearch({
	      location: pyrmont,
	      radius: 500,
	      type: ['park']
	    }, callback);
	  }

	  function callback(results, status) {
	    if (status === google.maps.places.PlacesServiceStatus.OK) {
	      for (var i = 0; i < results.length; i++) {
	        createMarker(results[i]);
	      }
	    }
	  }

	  function createMarker(place) {
	    var placeLoc = place.geometry.location;
	    var marker = new google.maps.Marker({
	      map: map,
	      position: place.geometry.location
	    });

	    google.maps.event.addListener(marker, 'click', function() {
	      infowindow.setContent(place.name);
	      infowindow.open(map, this);
	    });
	  }
	  
});