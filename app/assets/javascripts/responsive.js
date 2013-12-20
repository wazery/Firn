$(document).ready(function () {
	var opened = ".nav-list";
	var closed = "nav-list-open";

	$("#nav-menu").click(function() {
		if ($(opened).hasClass(closed) && $(".nav-hold").hasClass("nav-hold-open")) {
			$(opened).removeClass(closed);
			$(".nav-hold").removeClass("nav-hold-open");
		}
		else {
			$(opened).addClass(closed);
			$(".nav-hold").addClass("nav-hold-open");
		}
	});
});