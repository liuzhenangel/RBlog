$(document).on 'turbolinks:load', ->
  $('.first').on 'click', (event)->
    $('.album-samples').show()
    $('.container.album-wrap').hide()
    $('header.masthead').hide()
    $('.magazine').turn('page', 2)

  $('a.icon.quit').on 'click', (event)->
    console.log('xxxx')
    event.preventDefault()
    $('.album-samples').hide()
    $('.container.album-wrap').show()
    $('header.masthead').show()
