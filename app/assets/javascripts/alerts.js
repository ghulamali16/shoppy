document.addEventListener("turbolinks:load", function() {

  var notification = document.querySelector('.alert');

  if(notification) {
    window.setTimeout(function() {
      notification.style.display = "none";
    }, 5000);
  }

});
