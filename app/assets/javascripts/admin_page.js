$(document).ready(function(){
  $(".delete").on("click", function(event) {
    event.preventDefault();
    var parentDiv = $(this).closest('div')
    $.ajax({ url: $(this).parents("form.button_to").attr("action"),
      type: "DELETE"
    })
    .done(function(serverData){
      parentDiv.hide();
    })
    .fail(function(serverData) {
      alert("Unable to delete member");
    })
  })
  $(".edit").on("click", function(event) {
    event.preventDefault();
    var editButton = $(this);
    editButton.hide();
    var editForm = $(this).closest('div').find('.edit_member');
    editForm.show();
    editForm.on("submit", function(event) {
      event.preventDefault();
      editForm.hide();
      $.ajax({
        url: $(this).attr("action"),
        type: "PUT",
        data: $(this).serialize()
      })
      .done(function(serverData) {
        editButton.show();
        console.log(serverData);
      })
      .fail(function(serverData) {
        console.log("ajax fail")
      })
    })
  })
})
