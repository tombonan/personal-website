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
//= require jquery-ui
//= require jquery.lettering-0.6.1.min.js
//= require jquery.textillate.js
//= require ckeditor/init
//= require_tree .

$(document).ready(function() {  
$('.about-slide-container').hide();

$(function () {
    $('.fade-in-head').textillate({
        in: {
            effect: 'fadeInDown', 
            sync: true
        }
    });

    $('.fade-in-text').textillate({
        in: {
          effect: 'fadeInDown', 
          sync: true,
          
        }
    });

    $('.fade-in-icon').fadeIn(2200);
    $('.fade-in-icons').fadeIn(2000);
    $('.fade-in-nav').fadeIn(1600);
})


  $('.about').click(function() {
    $('.about-slide-container').show('slide', { direction: 'right'}, 250);
    $('.overlay').addClass('clicked', 250);
    $('.hide').addClass('hide-clicked', 250);
    $('.footer').addClass('footer-hide', 250);
    event.preventDefault();
  });

  $(document).on('click', '.back', function(){
    $('.about-slide-container').hide('slide', { direction: 'right'}, 250);
    $('.overlay').removeClass('clicked', 250);
    $('.hide').removeClass('hide-clicked', 250);
    $('.footer').removeClass('footer-hide', 250);
    event.preventDefault();
  });
});

