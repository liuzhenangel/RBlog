$(document).on 'ready page:load', ->
  #$('.album-home').on 'click', (event)->
    ##obj = $('.magazine').find('img')
    ##$.each obj, (index, element) ->
      ##console.log(index)
      ##console.log(element)
      ##$(element).attr('src', event.target.src)
      ##return
    #$('.album-samples').show()
    #$('body').addClass('overflow-hidden')
    #$('.container.album-wrap').hide()
    #$('header.masthead').hide()
    #$('.magazine').turn('page', 1)
    #$('.magazine').turn('page', 2)
  $('body').delegate 'a.icon.quit', "click", (event)->
    event.preventDefault()
    $('body').removeClass('overflow-hidden')
    $('.album-samples').hide()
    $('.container.album-wrap').show()
    $('header.masthead').show()


