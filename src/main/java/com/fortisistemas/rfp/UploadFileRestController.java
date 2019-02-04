package com.fortisistemas.rfp;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/admin/files/rest")
public class UploadFileRestController {

	@Autowired
	private AmazonS3ClientService amazonService;

	@PostMapping(value = "upload", produces = "application/json")
	public String uploadImages(@RequestParam(name = "prop-images[]") MultipartFile image, Authentication auth) {
		// TODO: warning: this might be executed in async mode
		// TODO: return a json object with details about how to delete the image:
		// http://plugins.krajee.com/file-input#form-submission
		System.out.println("UPLOADING FILES!");
		String userName = "Anonymous";
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				userName = principal.getUsername();
		}

		Date date = new Date();
		long time = date.getTime();

		String extension = image.getOriginalFilename().split("\\.")[1];
		String fileName = "rfp-" + userName + "-" + time + "." + extension;
		amazonService.uploadFile(image, fileName);
		return "{\"id\":\"" + fileName + "\"}";
	}
}