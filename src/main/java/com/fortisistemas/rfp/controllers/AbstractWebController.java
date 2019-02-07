package com.fortisistemas.rfp.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.ui.Model;

import com.fortisistemas.rfp.imageServices.AmazonS3ClientService;
import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertySearchModel;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertyService;

public abstract class AbstractWebController {

	@Autowired
	protected RealstatePropertyService rpService;

	@Autowired
	protected AmazonS3ClientService amazonService;

	protected void principalModel(Authentication auth, Model model) {
		if (auth != null) {
			User principal = (User) auth.getPrincipal();
			if (principal != null)
				model.addAttribute("principal", principal.getUsername());
		}
	}

	protected void modelHighlighted(Model model) {
		List<RealstateProperty> rps = rpService.getHighlightedProperties().stream().map(rp -> {
			RealstatePropertySearchModel rpsm = new RealstatePropertySearchModel(rp);
			rpsm.setImageUrls(amazonService.directoryContent(rp.getId().toString()));
			return rpsm;
		}).collect(Collectors.toList());

		model.addAttribute("highlightedProperties", rps);
	}

	protected void modelMinPrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().mapToInt(rp -> rp.getPrice()).min().orElse(0);
		model.addAttribute("minPrice", price);
	}

	protected void modelMaxPrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().mapToInt(rp -> rp.getPrice()).max().orElse(3500000);
		model.addAttribute("maxPrice", price);
	}

	protected void modelMinLeasePrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().filter(rp -> "En Renta".equals(rp.getTransaction())).mapToInt(rp -> rp.getPrice())
				.min().orElse(0);
		model.addAttribute("minLeasePrice", price);
	}
	
	protected void modelMaxLeasePrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().filter(rp -> "En Renta".equals(rp.getTransaction())).mapToInt(rp -> rp.getPrice())
				.max().orElse(25000);
		model.addAttribute("minLeasePrice", price);
	}
	
	
	protected void modelMinSalePrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().filter(rp -> "En Venta".equals(rp.getTransaction())).mapToInt(rp -> rp.getPrice())
				.min().orElse(0);
		model.addAttribute("minSalePrice", price);
	}
	
	protected void modelMaxSalePrice(Model model) {
		List<RealstateProperty> rps = rpService.getRealstateProperties();

		Integer price = rps.stream().filter(rp -> "En Venta".equals(rp.getTransaction())).mapToInt(rp -> rp.getPrice())
				.max().orElse(8000000);
		model.addAttribute("maxSalePrice", price);
	}
	

}
