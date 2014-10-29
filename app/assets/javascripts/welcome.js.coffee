# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".mid-menu").click (e) ->
    thisClass = $(e.target).text().toLowerCase()
    console.log thisClass
    e.preventDefault()
    $(".slider").slideUp(300)
    $(".tag-wrapper").fadeOut(300)
    $(".#{thisClass}").delay(300).fadeIn(300)
