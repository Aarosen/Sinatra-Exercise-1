$(document).ready(function() {
  console.log('hola');
	$("#message").on("submit",function(event) {
	  event.preventDefault();
	  var dataForm = $(this).serialize();
	  console.log(dataForm);
	  $.post('/abuelita', dataForm, function(data){
      console.log('entrando');
      console.log(data);
      $('#grandma').html(data);
	  });
  });
});
