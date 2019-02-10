/**
 * 
 */
$(document).on("ready", function () {

	var images = [];
	$("#prop-images").fileinput({
		uploadUrl: "/admin/files/rest/upload",
		allowedFileExtensions: ['jpg', 'png', 'gif', 'jpeg'],
		showUpload: false,
		maxFileCount: 15,
		maxFileSize: 10240,
		minFileCount: 1,
		maxImageWidth: 1920,
		maxImageHeight: 1100,
		resizePreference: 'height',
		resizeImage: true,
		resizeIfSizeMoreThan: 5120
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
				$(".loader-bg").fadeOut();
			}
			document.forms['realstatePropertyForm'].reportValidity();
		}
	});
});
