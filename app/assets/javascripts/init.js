$(document).ready(function(){
   var scroll_start = 0;
   var startchange = $('#startchange');
   var offset = startchange.offset();
   $(document).scroll(function() {
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
          $('#navbar').css('background-color', 'white');
          $('.nav-li').css('color', 'black');
       } else {
          $('#navbar').css('background-color', 'transparent');
          $('.nav-li').css('color', 'white');
       }
   });
});