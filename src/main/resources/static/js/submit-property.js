/**
 * 
 */
$(document).on("ready", function() {
	var images=[];
	$("#prop-images").fileinput({
		uploadUrl : "/admin/files/rest/upload",
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
		showUpload: false,
		maxFileCount: 15,
		minFileCount: 1
	}).on('filebatchuploadcomplete', function(event, files, extra) {
		$("#imageCsv").val( images.join(",") );
		$("#realstatePropertyForm").submit();
	}).on('fileuploaded', function(event, data, previewId, index){
		images.push(data.response.id);
	});
	
	$("#customSubmitButton").on("click", function(e) {
		$('#prop-images').fileinput('upload');
	});
});
