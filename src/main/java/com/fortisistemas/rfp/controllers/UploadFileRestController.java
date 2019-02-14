package com.fortisistemas.rfp.controllers;

import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fortisistemas.rfp.imageServices.AmazonS3ClientService;

@RestController
@RequestMapping("/admin/files/rest")
public class UploadFileRestController {

	@Autowired
	private AmazonS3ClientService amazonService;

	@PostMapping(value = "upload", produces = "application/json")
	public String uploadImages(@RequestParam(name = "prop-images[]") MultipartFile image, Authentication auth) {
		// http://plugins.krajee.com/file-input#form-submission
		String userName = "Anonymous";
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				userName = principal.getUsername();
		}

		Date date = new Date();
		long time = date.getTime();
		Random rand = new Random();
		int n = rand.nextInt(100);

		String extension = image.getOriginalFilename().split("\\.")[1];
		String fileName = "rfp-" + userName + "-" + time + "_" + n + "." + extension;
		amazonService.uploadFile(image, fileName);
		return "{\"id\":\"" + fileName + "\"}";
	}
}
