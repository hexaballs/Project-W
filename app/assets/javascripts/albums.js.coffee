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

  currentSlideTop = 1
  $sliderTop = $(".stash-container-tops")
  $slideContainerTop = $sliderTop.find(".stash-wrapper-window-tops")

  currentSlideBottom = 1
  $sliderBottom = $(".stash-container-bottoms")
  $slideContainerBottom = $sliderBottom.find(".stash-wrapper-window-bottoms")

  currentSlideDoodad = 1
  $sliderDoodad = $(".stash-container-doodads")
  $slideContainerDoodad = $sliderDoodad.find(".stash-wrapper-window-doodads")

  $("p.right-toggle.top").click (e) ->
    e.preventDefault()
    if currentSlideTop >= $slideContainerTop.length
      $slideContainerTop.stop()
    else
      $slideContainerTop.animate
        "margin-left": "-=" + width
      , animationSpeed, ->
        currentSlideTop++
        console.log "$slideContainerTop "+$slideContainerTop.length
        console.log "currentSlideTop "+currentSlideTop

  $("p.left-toggle.top").click (e) ->
    e.preventDefault()
    if currentSlideTop <= $slideContainerTop.length
      $slideContainerTop.stop()
    else
      $slideContainerTop.animate
        "margin-left": "+=" + width
      , animationSpeed, ->
        currentSlideTop--
        console.log "$slideContainerTop "+$slideContainerTop.length
        console.log "currentSlideTop "+currentSlideTop


  $("p.right-toggle.bottom").click (e) ->
    e.preventDefault()
    if currentSlideBottom >= $slideContainerBottom.length
      $slideContainerBottom.stop()
    else
      $slideContainerBottom.animate
        "margin-left": "-=" + width
      , animationSpeed, ->
        currentSlideBottom++
        console.log "$slideContainerBottom "+$slideContainerBottom.length
        console.log "currentSlideBottom "+currentSlideBottom

  $("p.left-toggle.bottom").click (e) ->
    e.preventDefault()
    if currentSlideBottom <= $slideContainerBottom.length
      $slideContainerBottom.stop()
    else
      $slideContainerBottom.animate
        "margin-left": "+=" + width
      , animationSpeed, ->
        currentSlideBottom--
        console.log "$slideContainerBottom "+$slideContainerBottom.length
        console.log "currentSlideBottom "+currentSlideBottom



  $("p.right-toggle.doodad").click (e) ->
    e.preventDefault()
    if currentSlideDoodad >= $slideContainerDoodad.length
      $slideContainerDoodad.stop()
    else
      $slideContainerDoodad.animate
        "margin-left": "-=" + width
      , animationSpeed, ->
        currentSlideDoodad++
        console.log "$slideContainerDoodad "+$slideContainerDoodad.length
        console.log "currentSlideDoodad "+currentSlideDoodad

  $("p.left-toggle.doodad").click (e) ->
    e.preventDefault()
    if currentSlideDoodad <= $slideContainerDoodad.length
      $slideContainerDoodad.stop()
    else
      $slideContainerDoodad.animate
        "margin-left": "+=" + width
      , animationSpeed, ->
        currentSlideDoodad--
        console.log "$slideContainerDoodad "+$slideContainerDoodad.length
        console.log "currentSlideDoodad "+currentSlideDoodad

