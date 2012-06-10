# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#button_hates_landlording, button_foreclosure, button_sell_quick

$(document).ready -> 
  $('#button_hates_landlording').click (e) ->
    $('#seller_hates_being_land_lord').show()
    $('#seller_sell_quick').hide()
    $('#seller_foreclosure').hide()
    e.preventDefault()
    
  $('#button_sell_quick').click (e) ->
    $('#seller_hates_being_land_lord').hide()
    $('#seller_sell_quick').show()
    $('#seller_foreclosure').hide()
    e.preventDefault()
    
  $('#button_foreclosure').click (e) ->
    $('#seller_hates_being_land_lord').hide()
    $('#seller_sell_quick').hide()
    $('#seller_foreclosure').show()
    e.preventDefault()
  
