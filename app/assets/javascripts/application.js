// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require_tree .
//$(document).ready(function(){
(function ($) {
  $(function () {
    $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 300
      edge: 'left', // Choose the horizontal origin
      closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
      draggable: true, // Choose whether you can drag to open on touch screens,
    });
    $('.collapsible').collapsible();
    $('.tap-target').tapTarget('open');
  });
})(jQuery);

$('.button-collapse').sideNav('show');
$('.button-collapse').sideNav('hide');

$(document).on('click',　function(){
  $('.tap-target').tapTarget('close');
});

(function(){
    $('.scrollspy').scrollSpy();
});


//});

window.addEventListener('load', ()=> {
  document.getElementById('message').onsubmit = () => {
    App.chat.put_message(document.getElementById('body').value);
    return false;
  }
});
