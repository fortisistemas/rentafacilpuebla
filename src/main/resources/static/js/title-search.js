/*
 * 
 */
$(document).on("ready", function() {
	var submitFormId = "titleSearchApartment";
	$("#adv-search-tab1").on("click", function(e) {
		submitFormId = "titleSearchApartment";
	});
	$("#adv-search-tab2").on("click", function(e) {
		submitFormId = "titleSearchHouse";
	});
	$("#title-search-submit-button").on("click", function(e) {
		$('#' + submitFormId).submit();
	});
});