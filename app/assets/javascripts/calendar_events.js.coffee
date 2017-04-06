# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery -> 
  $("#start_date").on "change", ->
    end_year = $("#start_date option:selected").text()
    alert("here")
    $.getScript("calendar_events")
  $("#end_date").on "change", ->
    end_year = $("#end_date option:selected").text()
    $("#time_slots").empty().append(end_year)
  $("#duration").on "change", ->
    end_year = $("#duration option:selected").text()
    $("#time_slots").empty().append(end_year)
