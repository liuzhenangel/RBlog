$(document).on 'ready page:load', ->
  $('body').delegate 'a.icon.quit', "click", (event)->
    event.preventDefault()
    $('body').removeClass('overflow-hidden')
    $('.album-samples').hide()
    $('.container.album-wrap').show()
    $('header.masthead').show()
    Hash.go('').update()
