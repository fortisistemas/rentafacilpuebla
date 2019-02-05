package com.fortisistemas.rfp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	@GetMapping(path = "/search")
	public String search(
			@RequestParam("transaction") Optional<String> transaction,
			@RequestParam("type") Optional<String> type, 
			@RequestParam("priceRange") Optional<String> priceRange,
			@RequestParam("areaRange") Optional<String> areaRange,
			@RequestParam("roomRange") Optional<String> roomRange,
			@RequestParam("bathRange") Optional<String> bathRange, Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();
		List<RealstateProperty> result = new ArrayList<>();
		
		System.out.println(transaction);
		
		result = rps.stream()
				.filter(rp -> !type.isPresent() || type.get().equals(rp.getType()))
				.filter(rp -> !transaction.isPresent() || transaction.get().contains(rp.getTransaction()))
				.filter(rp -> !priceRange.isPresent() || (rp.getPrice() >= Integer.parseInt(priceRange.get().split("-")[0]) && rp.getPrice() <= Integer.parseInt(priceRange.get().split("-")[1])))
				.filter(rp -> !areaRange.isPresent() || (rp.getArea() >= Integer.parseInt(areaRange.get().split("-")[0]) && rp.getArea() <= Integer.parseInt(areaRange.get().split("-")[1])))
				.filter(rp -> !roomRange.isPresent() || (rp.getBedrooms() >= Integer.parseInt(roomRange.get().split("-")[0]) && rp.getBedrooms() <= Integer.parseInt(roomRange.get().split("-")[1])))
				.filter(rp -> !bathRange.isPresent() || (rp.getBathrooms() >= Integer.parseInt(bathRange.get().split("-")[0]) && rp.getBathrooms() <= Integer.parseInt(bathRange.get().split("-")[1])))
				.collect(Collectors.toList());

		model.addAttribute("realstateProperties", result);
		return "public/search-results";
	}

	@GetMapping(path = "/detail")
	public String propertyDetails(Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}
		return "public/detail";
	}

	@GetMapping(path = "/contact")
	public String contact(Authentication auth) {
		return "public/contact";
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
		return "public/index";
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
		System.out.println("PROPERTY STORED TO DATABASE: " + model);
		int i = 0;
		for (String tempFileName : imageCsv.split(",")) {
			i++;
			String extension = tempFileName.split("\\.")[1];
			String fileName = "rfp-" + model.getId() + "-" + i + "." + extension;
			try {
				amazonService.renameFileFromS3Bucket(tempFileName, fileName);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return "redirect:/admin";
	}

}
