package com.fortisistemas.rfp.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;

@Controller
public class CreatePropertyController extends AbstractWebController {
	
	@GetMapping(path = "/admin/properties/create")
	public String createRealstateProperty(Authentication auth, Model model) {
		principalModel(auth, model);
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
			String fileName = model.getId() + "/rfp-" + model.getId() + "-" + i + "." + extension;
			try {
				amazonService.renameFileFromS3Bucket(tempFileName, fileName);
			} catch (Exception e) {
				System.out.println("ERROR WHILE TRYING TO RENAME " + tempFileName + " to " + fileName);
				e.printStackTrace();
			}
		}

		return "redirect:/admin";
	}
}
