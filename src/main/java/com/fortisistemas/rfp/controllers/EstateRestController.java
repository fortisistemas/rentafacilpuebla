package com.fortisistemas.rfp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fortisistemas.rfp.imageServices.AmazonS3ClientService;
import com.fortisistemas.rfp.realstateProperty.RealstateProperty;
import com.fortisistemas.rfp.realstateProperty.RealstatePropertyService;

@RestController
@RequestMapping("/admin/estate/rest/")
public class EstateRestController {
	
	@Autowired
	protected RealstatePropertyService rpService;
	
	@Autowired
	protected AmazonS3ClientService amazonService;

	@GetMapping("unhighlight/{id}")
	public String unhighlightEstate(@PathVariable("id") Integer id) {
		RealstateProperty estate = rpService.getRealstatePropertyById(id);
		estate.setHighlight("off");
		rpService.updateRealstateProperty(estate);
		return "{}";
	}
	
	@GetMapping("highlight/{id}")
	public String highlightEstate(@PathVariable("id") Integer id) {
		RealstateProperty estate = rpService.getRealstatePropertyById(id);
		estate.setHighlight("on");
		rpService.updateRealstateProperty(estate);
		return "{}";
	}
	
	@GetMapping("delete/{id}")
	public String deleteEstate(@PathVariable("id") Integer id) {
		amazonService.deleteFileFromS3Bucket(id);
		rpService.deleteRealstateProperty(id);
		return "{}";
	}
	
}
