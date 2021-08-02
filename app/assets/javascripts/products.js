// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

      function readURL(input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            $('#img_prev')
              .attr('src', e.target.result)
              .width(150)
              .height(200);
          };

          reader.readAsDataURL(input.files[0]);
        }
      }

