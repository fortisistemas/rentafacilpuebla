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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertySearchModel;
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

		modelMinPrice(model);
		modelMaxPrice(model);
		modelHighlighted(model);
		return "public/index";
	}

	@GetMapping(path = "/search")
	public String search(@RequestParam("transaction") Optional<String> transaction,
			@RequestParam("type") Optional<String> type, @RequestParam("priceRange") Optional<String> priceRange,
			@RequestParam("areaRange") Optional<String> areaRange,
			@RequestParam("roomRange") Optional<String> roomRange,
			@RequestParam("bathRange") Optional<String> bathRange, @RequestParam("page") Optional<Integer> page,
			Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();
		List<RealstatePropertySearchModel> result = new ArrayList<>();

		int pageStart = page.orElse(1) * 5 - 5;
		int pageEnd = page.orElse(1) * 5;

		result = rps.stream().map(rp -> {
			RealstatePropertySearchModel rpsm = new RealstatePropertySearchModel(rp);
			rpsm.setImageUrls(amazonService.directoryContent(rp.getId().toString()));
			return rpsm;
		}).filter(rp -> !type.isPresent() || type.get().equals(rp.getType()))
				.filter(rp -> !transaction.isPresent() || transaction.get().contains(rp.getTransaction().trim()))
				.filter(rp -> !priceRange.isPresent()
						|| (rp.getPrice() >= Integer.parseInt(priceRange.get().split("-")[0].trim())
								&& rp.getPrice() <= Integer.parseInt(priceRange.get().split("-")[1].trim())))
				.filter(rp -> !areaRange.isPresent()
						|| (rp.getArea() >= Integer.parseInt(areaRange.get().split("-")[0].trim())
								&& rp.getArea() <= Integer.parseInt(areaRange.get().split("-")[1].trim())))
				.filter(rp -> !roomRange.isPresent()
						|| (rp.getBedrooms() >= Integer.parseInt(roomRange.get().split("-")[0].trim())
								&& rp.getBedrooms() <= Integer.parseInt(roomRange.get().split("-")[1].trim())))
				.filter(rp -> !bathRange.isPresent()
						|| (rp.getBathrooms() >= Integer.parseInt(bathRange.get().split("-")[0].trim())
								&& rp.getBathrooms() <= Integer.parseInt(bathRange.get().split("-")[1].trim())))
				.collect(Collectors.toList());

		if (result.size() == 0)
			return "redirect:/empty-list";
		else {

			if (result.size() < pageStart)
				return "redirect:/empty-list";

			if (pageEnd > result.size()) {
				pageEnd = result.size();
			}

			Integer searchMinPrice = result.stream().map(rp -> rp.getPrice()).min(Integer::min).orElse(0);
			Integer searchMaxPrice = result.stream().map(rp -> rp.getPrice()).max(Integer::max).orElse(3500000);

			List<RealstatePropertySearchModel> pagedResult = result.subList(pageStart, pageEnd);
			model.addAttribute("realstateProperties", pagedResult);

			String searchTransaction = !transaction.isPresent() || transaction.get().contains(",")
					? "en venta o en renta"
					: transaction.get();
			String searchPropertyType = !type.isPresent() ? "Casas o departamentos" : type.get();
			model.addAttribute("resultSize", result.size());
			model.addAttribute("currentPage", page.orElse(1));
			model.addAttribute("searchTransaction", searchTransaction);
			model.addAttribute("searchPropertyType", searchPropertyType);
			model.addAttribute("searchMinPrice", searchMinPrice);
			model.addAttribute("searchMaxPrice", searchMaxPrice);
			modelMinPrice(model);
			modelMaxPrice(model);
			return "public/search-results";
		}
	}

	private void modelHighlighted(Model model) {
		List<RealstateProperty> rps = rpService.getHighlightedProperties().stream().map(rp -> {
			RealstatePropertySearchModel rpsm = new RealstatePropertySearchModel(rp);
			rpsm.setImageUrls(amazonService.directoryContent(rp.getId().toString()));
			return rpsm;
		}).collect(Collectors.toList());

		model.addAttribute("highlightedProperties", rps);
	}

	private void modelMinPrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().mapToInt(rp -> rp.getPrice()).min().orElse(0);
		model.addAttribute("minPrice", price);
	}

	private void modelMaxPrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().mapToInt(rp -> rp.getPrice()).max().orElse(3500000);
		model.addAttribute("maxPrice", price);
	}

	@GetMapping(path = "/detail/{id}")
	public String propertyDetails(@PathVariable("id") Integer id, Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}
		RealstateProperty fromDb = rpService.getRealstatePropertyById(id);
		RealstatePropertySearchModel toScreen = new RealstatePropertySearchModel(fromDb);
		toScreen.setImageUrls(amazonService.directoryContent(fromDb.getId().toString()));
		model.addAttribute("propiedad", toScreen);
		modelMinPrice(model);
		modelMaxPrice(model);
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
