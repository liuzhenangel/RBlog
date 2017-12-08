$(document).on 'turbolinks:load', ->
  $('body').delegate '#sidenavToggler', "click", (event)->
    event.preventDefault()
    $("body").toggleClass("sidenav-toggled")
    $(".navbar-sidenav .nav-link-collapse").addClass("collapsed")
    $(".navbar-sidenav .sidenav-second-level, .navbar-sidenav .sidenav-third-level").removeClass("show")
