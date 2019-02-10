package com.fortisistemas.rfp.controllers;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertySearchModel;

@Controller
public class PropertyDetailController extends AbstractWebController {
	
	@GetMapping(path = "/detail/{id}")
	public String propertyDetails(@PathVariable("id") Integer id, Authentication auth, Model model) {
		principalModel(auth, model);
		RealstateProperty fromDb = rpService.getRealstatePropertyById(id);
		RealstatePropertySearchModel toScreen = new RealstatePropertySearchModel(fromDb);
		toScreen.setImageUrls(amazonService.directoryContent(fromDb.getId().toString()));
		model.addAttribute("propiedad", toScreen);
		modelMinPrice(model);
		modelMaxPrice(model);
		modelHighlighted(model);
		modelNewArrivals(model);
		return "public/detail";
	}
}
