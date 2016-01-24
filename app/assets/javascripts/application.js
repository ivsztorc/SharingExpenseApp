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
//= require turbolinks
//= require_tree .

// Taken from http://www.sutanaryan.com/how-to-create-fixed-menu-when-scrolling-page-with-css-and-jquery/
jQuery("document").ready(function($){
  var nav_container = $("#fixed_header");
  if(nav_container.offset()) {
    var offset = nav_container.offset().top;
  }
  $(window).scroll(function () {
    if( $(this).scrollTop() > offset) {
      nav_container.addClass("f-nav");
    } else {
      nav_container.removeClass("f-nav");
    }
  });
});

// Smooth scroll to position
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});


var $header_img = $("#trip-header"),
 $h1_query = $("h1").text();

console.log($h1_query);
$.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?", {
   tags: $("#searchterm").val(),
   tagmode: "any",
   format: "json"
 },
 function(data) {
   $header_img.attr("src", data.items[0].media.m);
   console.log(data);
});
<img id="trip-header" src="//placehold.it/400x200" alt="" />