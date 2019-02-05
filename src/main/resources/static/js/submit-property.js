/**
 * 
 */
$(document).on("ready", function () {

	var images = [];
	$("#prop-images").fileinput({
		uploadUrl: "/admin/files/rest/upload",
		allowedFileExtensions: ['jpg', 'png', 'gif'],
		showUpload: false,
		maxFileCount: 15,
		minFileCount: 1
	}).on('filebatchuploadcomplete', function (event, files, extra) {
		$("#imageCsv").val(images.join(","));
		$(".loader-bg").fadeOut();
		$("#realstatePropertyForm").submit();
	}).on('fileuploaded', function (event, data, previewId, index) {
		images.push(data.response.id);
	}).on('filebatchuploaderror', function (error, data, msg) {fiError(error, data, msg)})
	  .on('fileerror', function (error, data, msg) {fiError(error, data, msg)})
	  .on('fileuploaderror', function (error, data, msg) {fiError(error, data, msg)});

	function fiError (e, data, msg) {
		$(".loader-bg").fadeOut();
		alert('Revise la galería de imágenes, algo salió mal al cargar las imágenes.');
	}

	$("#customSubmitButton").on("click", function (e) {
		$(".loader-bg").fadeIn();
		var mapLoc = $("#lng").val() + ',' + $("#lat").val();
		if (document.forms['realstatePropertyForm'].checkValidity() && mapLoc.length > 5 ) {
			$('#prop-images').fileinput('upload');
		} else {
			if(mapLoc.length < 5) {
				alert('no olvide seleccionar localización en el mapa');
			}
			document.forms['realstatePropertyForm'].reportValidity();
		}
	});
});
