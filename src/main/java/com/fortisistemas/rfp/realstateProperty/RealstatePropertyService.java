package com.fortisistemas.rfp.realstateProperty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RealstatePropertyService {
	@Autowired
	private RealstatePropertyRepository propRepo;

	public void addRealstateProperty(RealstateProperty property) {
		propRepo.save(property);
	}

	public void updateRealstateProperty(RealstateProperty property) {
		propRepo.save(property);
	}

	public RealstateProperty getRealstatePropertyById(Integer id) {
		return propRepo.findById(id).orElse(null);
	}

	public List<RealstateProperty> getRealstateProperties() {
		return propRepo.findAll();
	}
}
