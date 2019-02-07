package com.fortisistemas.rfp.controllers;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;

@Controller
public class IndexWebController extends AbstractWebController {
	
	@GetMapping(path = {"/", "/admin"})
	public String index(Authentication auth, Model model) {
		principalModel(auth, model);
		modelMinPrice(model);
		modelMaxPrice(model);
		modelMinSalePrice(model);
		modelMaxSalePrice(model);
		modelMinLeasePrice(model);
		modelMaxLeasePrice(model);
		modelHighlighted(model);

		List<RealstateProperty> rps = rpService.getRealstateProperties();
		long housesCount = rps.stream().filter(r -> "Casa".equals(r.getType())).count();
		long apartmentsCount = rps.stream().filter(r -> "Departamento".equals(r.getType())).count();

		model.addAttribute("housesCount", housesCount);
		model.addAttribute("apartmentsCount", apartmentsCount);

		return "public/index";
	}
}
