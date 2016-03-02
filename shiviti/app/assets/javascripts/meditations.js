// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){

//hide second half of form
  
  $('.end').css("display","none");

  //hide first half when starting to meditate

  $('.start_button').on('click', function(e) {
    //prevent form from automatically submitting
    e.preventDefault();
    $('.start').css("display","none");
     $('.end_button').css("display","block");
  });

  $('.end_button').on('click', function(e) {
    e.preventDefault();
    $('.end').css("display","block");
    $('.end_button').css("display","none");

  });


});