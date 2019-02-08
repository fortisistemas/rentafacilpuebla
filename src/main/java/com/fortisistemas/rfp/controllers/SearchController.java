package com.fortisistemas.rfp.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertySearchModel;

@Controller
public class SearchController extends AbstractWebController {
	
	@GetMapping(path = "/search")
	public String search(@RequestParam("transaction") Optional<String> transaction,
			@RequestParam("type") Optional<String> type, @RequestParam("priceRange") Optional<String> priceRange,
			@RequestParam("areaRange") Optional<String> areaRange,
			@RequestParam("roomRange") Optional<String> roomRange,
			@RequestParam("bathRange") Optional<String> bathRange, @RequestParam("page") Optional<Integer> page,
			Authentication auth, Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();
		List<RealstateProperty> filteredResult = new ArrayList<>();

		int pageStart = page.orElse(1) * 5 - 5;
		int pageEnd = page.orElse(1) * 5;

		filteredResult = rps.stream()
				.filter(rp -> !type.isPresent() || type.get().equals(rp.getType()))
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

		if (filteredResult.size() == 0)
			return "redirect:/empty-list";
		else {

			if (filteredResult.size() < pageStart)
				return "redirect:/empty-list";

			if (pageEnd > filteredResult.size()) {
				pageEnd = filteredResult.size();
			}

			Integer searchMinPrice = filteredResult.stream().map(rp -> rp.getPrice()).min(Integer::min).orElse(0);
			Integer searchMaxPrice = filteredResult.stream().map(rp -> rp.getPrice()).max(Integer::max).orElse(3500000);

			List<RealstatePropertySearchModel> pagedResult = filteredResult.subList(pageStart, pageEnd).stream().map(rp -> {
				RealstatePropertySearchModel rpsm = new RealstatePropertySearchModel(rp);
				rpsm.setImageUrls(amazonService.directoryContent(rp.getId().toString()));
				return rpsm;
			}).collect(Collectors.toList());
			model.addAttribute("realstateProperties", pagedResult);

			String searchTransaction = !transaction.isPresent() || transaction.get().contains(",")
					? "en venta o en renta"
					: transaction.get();
			String searchPropertyType = !type.isPresent() ? "Casas o departamentos" : type.get();
			model.addAttribute("resultSize", filteredResult.size());
			model.addAttribute("currentPage", page.orElse(1));
			model.addAttribute("searchTransaction", searchTransaction);
			model.addAttribute("searchPropertyType", searchPropertyType);
			model.addAttribute("searchMinPrice", searchMinPrice);
			model.addAttribute("searchMaxPrice", searchMaxPrice);
			
			principalModel(auth, model);
			modelMinPrice(model);
			modelMaxPrice(model);
			modelMinSalePrice(model);
			modelMaxSalePrice(model);
			modelMinLeasePrice(model);
			modelMaxLeasePrice(model);
			modelHighlighted(model);
			
			return "public/search-results";
		}
	}
}
