$(document).ready(function(){
  $(".delete").on("click", function(event) {
    event.preventDefault();
    var parentDiv = $(this).closest('div')
    $.ajax({ url: $(this).parents("form").attr("action"),
      type: "DELETE"
    })
    .done(function(serverData){
      parentDiv.hide();
    })
    .fail(function(serverData) {
      alert("Unable to delete member");
    })
  })
})
