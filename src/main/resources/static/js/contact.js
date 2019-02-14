/**
 * 
 */
$(document).on("ready", function() {
	var submitFormId = "titleSearchApartment";
	$("#adv-search-tab1").on("click", function(e) {
		submitFormId = "titleSearchApartment";
		console.log(submitFormId);
	});
	$("#adv-search-tab2").on("click", function(e) {
		submitFormId = "titleSearchHouse";
		console.log(submitFormId);
	});
	$("#title-search-submit-button").on("click", function(e) {
		$('#' + submitFormId).submit();
	});
});