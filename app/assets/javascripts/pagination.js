$(function() {
	$('#leads').on('click', '.pagination a', function() {
		$.get(this.href, null, null, 'script');
		return false;
	});
	$('#first_name').keyup(function() {
		$.post('leads/filter', $(this).serialize(), null, 'script');
		return false;
	});
	$('#last_name').keyup(function() {
		$.post('leads/filter', $(this).serialize(), null, 'script');
		return false;
	});
	$('#before').keyup(function() {
		$.post('leads/filter', $(this).serialize(), null, 'script');
		return false;
	});
	$('#after').keyup(function() {
		$.post('leads/filter', $(this).serialize(), null, 'script');
		return false;
	});
});