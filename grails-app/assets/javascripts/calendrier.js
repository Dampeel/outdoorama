/**
 * Outils calendrier
 */

$(document).ready(function() {

	$(".input-daterange").datepicker({
	});
	
	$('#filtres').on('input', '.form-control', function(e) {
		var url = $('form').attr('action');
		var data = $('form').serialize();
		
		$.ajax({
			type: 'POST',
			url: url,
			data: data,
			success: function(data) {
				$('#tableau').html(data);
			}
		});
	});
	
	$('#tableau').on('click', 'th.sortable a', function(e) {
	    e.preventDefault();
	    var url = $(this).attr('href');
	    
		var data = $('form').serialize();
		
	    $.ajax({
	        type: 'GET',
	        url: url,
	        data: data,
	        success: function(data) {
	            $('#tableau').fadeOut('fast', function() {
	            	$(this).html(data).fadeIn('fast')
	            });
	        }
	    });
	});
});