package com.fortisistemas.rfp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertyService;

@Controller
public class WebController {

	@Autowired
	private RealstatePropertyService rpService;

	@Autowired
	private AmazonS3ClientService amazonService;

	@GetMapping(path = "/")
	public String index(Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}

		return "public/index";
	}

	@GetMapping(path = "/login")
	public String login() {
		return "login/index";
	}

	@GetMapping(path = "/admin")
	public String admin(Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}
		return "admin/index";
	}

	@GetMapping(path = "/admin/properties/create")
	public String createRealstateProperty(Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}
		return "admin/submit-property";
	}

	@PostMapping("/admin/properties/create")
	public String realstateProperyWithImages(@ModelAttribute RealstateProperty model,
			@RequestParam("imageCsv") String imageCsv) {
		// Save the real state property in database
		rpService.addRealstateProperty(model);

		int i = 0;
		for (String tempFileName : imageCsv.split(",")) {
			i++;
			String extension = tempFileName.split("\\.")[1];
			String fileName = "rfp-" + model.getId() + "-" + i + "." + extension;
			amazonService.renameFileFromS3Bucket(tempFileName, fileName);
		}

		return "redirect:/admin";
	}	

}
