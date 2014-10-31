# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $ ->
#   $('form').on 'click', '.remove_fields', (event) ->
#     $(this).prev('input[type=hidden]').val('1')
#     $(this).closest('.fields').hide()
#     event.preventDefault()

#   $('form').on 'click', '.add_fields', (event) ->
#     time = new Date().getTime()
#     regexp = new RegExp($(this).data('id'), 'g')
#     $(this).after($(this).data('fields').replace(regexp, time))
#     event.preventDefault()

$ ->
  width = 628
  animationSpeed = 1000


  clicks = 1
  $sliderTop = $(".stash-container-tops")
  $slideContainerTop = $sliderTop.find(".stash-wrapper-window-tops")
  slideContainerLengthTop = Math.ceil($slideContainerTop.length/3)

  $sliderBottom = $(".stash-container-bottoms")
  $slideContainerBottom = $sliderBottom.find(".stash-wrapper-window-bottoms")
  slideContainerLengthBottom = Math.ceil($slideContainerBottom.length/3)

  $sliderDoodad = $(".stash-container-doodads")
  $slideContainerDoodad = $sliderDoodad.find(".stash-wrapper-window-doodads")
  slideContainerLengthDoodad = Math.ceil($slideContainerDoodad.length/3)


  $("p.right-toggle.top").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthTop
    if clicks >= slideContainerLengthTop
      clicks = slideContainerLengthTop
      $slideContainerTop.stop()
    else
      $slideContainerTop.animate
        "margin-left": "-=" + width
      , animationSpeed
      clicks++
      console.log "after clicks ="+ clicks

  $("p.left-toggle.top").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthTop
    if clicks <= 1
      $slideContainerTop.stop()
    else
      $slideContainerTop.animate
        "margin-left": "+=" + width
      , animationSpeed
      clicks--
      console.log "after clicks ="+ clicks

# -----

  $("p.right-toggle.bottom").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthBottom
    if clicks >= slideContainerLengthBottom
      clicks = slideContainerLengthBottom
      $slideContainerBottom.stop()
    else
      $slideContainerBottom.animate
        "margin-left": "-=" + width
      , animationSpeed
      clicks++
      console.log "after clicks ="+ clicks

  $("p.left-toggle.bottom").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthBottom
    if clicks <= 1
      $slideContainerBottom.stop()
    else
      $slideContainerBottom.animate
        "margin-left": "+=" + width
      , animationSpeed
      clicks--
      console.log "after clicks ="+ clicks

# ---------


  $("p.right-toggle.doodad").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthDoodad
    if clicks >= slideContainerLengthDoodad
      clicks = slideContainerLengthDoodad
      $slideContainerDoodad.stop()
    else
      $slideContainerDoodad.animate
        "margin-left": "-=" + width
      , animationSpeed
      clicks++
      console.log "after clicks ="+ clicks

  $("p.left-toggle.doodad").click (e) ->
    e.preventDefault()
    clicks
    console.log "clicks = "+clicks
    console.log "num divs = "+ slideContainerLengthDoodad
    if clicks <= 1
      $slideContainerDoodad.stop()
    else
      $slideContainerDoodad.animate
        "margin-left": "+=" + width
      , animationSpeed
      clicks--
      console.log "after clicks ="+ clicks


  $('div.category.top.show').click (e) ->
    e.preventDefault()
    $('.stash-container-tops').slideDown()
    $('p.left-toggle.top').css("color", "black")
    $('p.right-toggle.top').css("color", "black")


  $('div.category.bottom.show').click (e) ->
    e.preventDefault()
    $('.stash-container-bottoms').slideDown()
    $('p.left-toggle.bottom').css("color", "black")
    $('p.right-toggle.bottom').css("color", "black")

  $('div.category.doodad.show').click (e) ->
    e.preventDefault()
    $('.stash-container-doodads').slideDown()
    $('p.left-toggle.doodad').css("color", "black")
    $('p.right-toggle.doodad').css("color", "black")