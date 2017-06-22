# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@showProfile = ->
  $('#threads').hide();
  $('.chat-footer .glyphicon').removeClass('active-choice');
  $('#body').hide();
  $('#contacts').hide();
  $('#rooms').hide();
  $('.sens-btn').hide();
  $('#profile').animate({width: 'toggle'})

@showUsers = ->
  $('#threads').hide();
  $('.chat-footer .glyphicon').removeClass('active-choice');
  $('#body').hide();
  $('#profile').hide();
  $('#rooms').hide();
  $('.sens-btn').hide();
  $('.chat-footer .glyphicon:first').addClass('active-choice');
  $('#contacts').animate({width: 'toggle'})
@showThreads = ->
  $('#contacts').hide();
  $('.chat-footer .glyphicon').removeClass('active-choice');
  $('#profile').hide();
  $('#rooms').hide();
  $('#threads').show()
  $('#body').show()
  $('.sens-btn').show()
  $('.chat-footer .glyphicon:nth-child(2)').addClass('active-choice');
@showRooms = ->
  $('#contacts').hide();
  $('.chat-footer .glyphicon').removeClass('active-choice');
  $('#body').hide();
  $('#profile').hide();
  $('#threads').hide();
  $('.sens-btn').hide();
  $('#rooms').animate({width: 'toggle'})
  $('.chat-footer .glyphicon:nth-child(3)').addClass('active-choice');

$(document).ready ->
  $('#body').attr('placeholder','Type your message here')

$ ->
  $(".sens-btn").click ->
    $('#message').submit()
    $('#body').val('')
