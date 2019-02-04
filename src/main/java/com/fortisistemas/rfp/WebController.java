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
import com.fortisistemas.rfp.realstateProperty.RealstatePropertyPostFormWrapper;
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
	public String realstateProperyWithImages(@ModelAttribute RealstateProperty model) {
		// Save the real state property in database
		//RealstateProperty rsp = shadowCopyRealstateProperty(model);
		rpService.addRealstateProperty(model);
		// Save images in amazons3
		/*System.out.println("IMAGES: " + uploadingFiles.length);
		if (uploadingFiles != null) {
			for (int i = 0; i < uploadingFiles.length; i++) {
				System.out.println("IMAGE: " + i);
				MultipartFile mf = uploadingFiles[i];
				String extension = mf.getOriginalFilename().split("\\.")[1];
				String fileName = "rfp-" + model.getId() + "-" + i + "." + extension;
				amazonService.uploadFile(mf, fileName);
			}
		}*/

		return "redirect:/admin";
	}

	private RealstateProperty shadowCopyRealstateProperty(RealstateProperty original) {
		RealstateProperty result = new RealstateProperty();
		result.setAirConditioner(original.getAirConditioner());
		result.setArea(original.getArea());
		result.setBalcony(original.getBalcony());
		result.setBathrooms(original.getBathrooms());
		// TODO: Complete the shadow copy
		return result;
	}

}
