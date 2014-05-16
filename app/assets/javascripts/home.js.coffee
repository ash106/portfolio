# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".image-popup-no-margins").magnificPopup
    type: "image"
    closeOnContentClick: true
    closeBtnInside: false
    fixedContentPos: true
    mainClass: "mfp-no-margins mfp-with-zoom" # class to remove default margin from left and right side
    image:
      verticalFit: true
    zoom:
      enabled: true
      duration: 300