$(document).ready(function () {

	$('.nav-menu').click(function() {
		if ($('.nav-list').hasClass('nav-list-open') && $('.nav-hold').hasClass('nav-hold-open')) {
			$('.nav-list').removeClass('nav-list-open', 1000);
			$('.nav-hold').removeClass('nav-hold-open', 1000);
		}
		else {
			$('.nav-list').addClass('nav-list-open', 1000);
			$('.nav-hold').addClass('nav-hold-open', 1000);
		}
	});
});