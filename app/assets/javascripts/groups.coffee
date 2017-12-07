# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
    $(document).ready(function(){
              
$("#addNewMember").on('click', function(){
                
$("#member_choices").append($("#new_member_form").html());
 });

});
 
    
@removeMember = (element) ->
    element.parent().remove()
