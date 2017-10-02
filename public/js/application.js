$(document).ready(function() {

  $(".vote-wrapper").on("submit", "#upvote", function(event) {
        event.preventDefault();
        $form = $(event.target);
        $.ajax({
          method: $form.attr("method"),
          url: $form.attr("action"),
          data: $form.serialize()
        })
        .done(function(response) {
          $form.parent().parent().children(".votes").text("Votes: "+response)
        })
      })

  $(".vote-wrapper").on("submit", "#downvote", function(event) {
          event.preventDefault();
          $form = $(event.target);
          $.ajax({
            method: $form.attr("method"),
            url: $form.attr("action"),
            data: $form.serialize()
          })
          .done(function(response) {
            $form.parent().parent().children(".votes").text("Votes: "+response)
          })
        })

});
