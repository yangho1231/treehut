angular.module('myApp').directive('homeMenu', function() {
  return {
    restrict: 'EA',
    templateUrl: '../../../assets/views/homepage-menu.html',

    link: function(scope, element, attributes) {
      $(window).on('scroll', function() {

        if($(window).scrollTop() > 50) {
        $('.navbar-brand>img').css({"filter": "brightness(1) invert(0)"});
        $('.navbar').css({"background-color": "white", "border-bottom": "1px solid black"});
        $('.nav.navbar-nav.navbar-right li').css({"color": "black"});
        $('.container-fluid').css({"height": "15vh"});
        }

        else if($(window).scrollTop() < 50) {
        $('.navbar-brand>img').css({"filter": "brightness(0) invert(1)"});
        $('.navbar').css({"background-color": "transparent", "border-bottom": "none"});
        $('#navbar-right li').css({"color": "white"});
        }
      });
}
};
});

// $('.infoBox').on('mouseover', function() {
//
//   $('.infoBox').animate({height: '400px', width: '700px'});
// });
