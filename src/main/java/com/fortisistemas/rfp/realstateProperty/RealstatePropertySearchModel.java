package com.fortisistemas.rfp.realstateProperty;

import java.util.ArrayList;
import java.util.List;

public class RealstatePropertySearchModel extends RealstateProperty {
	private static final long serialVersionUID = 1L;
	private List<String> imageUrls = new ArrayList<String>();

	public RealstatePropertySearchModel(RealstateProperty property) {
		super();
		setId(property.getId());
		setArea(property.getArea());
		setBalcony(property.getBalcony());
		setBathrooms(property.getBathrooms());
		setLat(property.getLat());
		setLng(property.getLng());
		setType(property.getType());
		setCityStateZip(property.getCityStateZip());
		setPrice(property.getPrice());
		// TODO: Complete all properties
	}

	public List<String> getImageUrls() {
		return imageUrls;
	}

	public void setImageUrls(List<String> imageUrls) {
		System.out.println(imageUrls);
		this.imageUrls = imageUrls;
	}

}
