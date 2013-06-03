$(document).ready(function() {
  $('form').submit(function (event) {
    event.preventDefault();
    var action = $(this).attr('action');
    var data = $(this).serialize();
    $.post(action, data, function(answer) {
      $('#grandma_says').html(answer);
    });
  });
});
