$(document).on 'turbolinks:load', ->
  $('body').delegate '.simditor-body', 'paste', (event)->
    console.log('xxxxxxxxx')
    pasteEvent = event.originalEvent
    if pasteEvent and pasteEvent.clipboardData and pasteEvent.clipboardData.items
      if pasteEvent.clipboardData.items[0].type.indexOf('image') isnt -1
        event.preventDefault()
				formData = new FormData()
				formData.append 'file', pasteEvent.clipboardData.items[0].getAsFile(), "image.png"
				$.ajax
					url: '/admin/upload'
					type: 'POST'
					data: formData
					dataType: 'JSON'
					processData: false
					contentType: false
					beforeSend: ->
					success: (e, status, res) ->
						src = res.responseJSON.file_path
						$(".simditor-body").children().last().append('<p><img alt="Image" src="' + src + '" width="652" height="236"><br></p>').focus()
						return false
					error: (res) ->
						alert("上传失败")
					complete: ->
