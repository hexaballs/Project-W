# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # $(".mid-menu li a").click (e) ->
  #   e.preventDefault()

  $(".mid-menu").click (e) ->
    thisClass = $(e.target).text().toLowerCase()
    console.log thisClass
    e.preventDefault()
    $(".slider").slideUp()
    $(".tag-wrapper").fadeOut(300)
    $(".#{thisClass}").delay(300).fadeIn(600)


  # $(".all").click (e) ->
  #   e.preventDefault()
  #   console.log "clicked"
  #   $(".slider").slideUp()
  #   $(".tag-wrapper").fadeIn("slow")

  # $(".biker").click (e) ->
  #   e.preventDefault()
  #   console.log $(this).attr('class')
  #   $(".slider").slideUp()
  #   $(".tag-wrapper").fadeOut()
  #   $(".tag-wrapper.biker").fadeToggle()
