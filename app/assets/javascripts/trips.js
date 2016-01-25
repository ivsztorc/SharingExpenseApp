$(function() {

  var $header_img = $("#trip-header"),
   $h1_query = $("h1").text();

   $.getJSON(
      "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?", // URL
      { tags: $h1_query, tagmode: "any", format: "json" }, // DATA TO SEND
      function(data){
        $header_img.attr("src", data.items[0].media.m);
    });

}); // End ready function