package com.fortisistemas.rfp.realstateProperty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
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
	
	public void deleteRealstateProperty(Integer id) {
		propRepo.deleteById(id);
	}

	public RealstateProperty getRealstatePropertyById(Integer id) {
		return propRepo.findById(id).orElse(null);
	}

	public List<RealstateProperty> getRealstateProperties() {
		return propRepo.findAll();
	}

	public List<RealstateProperty> getHighlightedProperties() {
		List<RealstateProperty> highlighted = propRepo.findHighlighted();
		if (highlighted.size() < 4) {
			List<RealstateProperty> all = propRepo.findAll(new Sort(Sort.Direction.DESC, "id"));
			int remaining = 4 - highlighted.size();
			if (all.size() < remaining) {
				all.stream().filter(a -> !highlighted.contains(a)).forEach(a -> highlighted.add(a));
			} else {
				for (RealstateProperty a : all) {
					if (!highlighted.contains(a)) {
						highlighted.add(a);
						if (highlighted.size() >= 4)
							break;
					}
				}
			}
		}
		return highlighted;
	}
}
