package com.fortisistemas.rfp.realstateProperty;

import java.util.ArrayList;
import java.util.List;

public class RealstatePropertySearchModel extends RealstateProperty {
	private static final long serialVersionUID = 1L;
	private List<String> imageUrls = new ArrayList<String>();

	public RealstatePropertySearchModel(RealstateProperty property) {
		super();
		setId(property.getId());
		setType(property.getType());
		setTransaction(property.getTransaction());
		setPrice(property.getPrice());
		setArea(property.getArea());
		setBedrooms(property.getBedrooms());
		setBathrooms(property.getBathrooms());
		setGarageSize(property.getGarageSize());
		setDescription(property.getDescription());
		setStreet(property.getStreet());
		setNeighborghood(property.getNeighborghood());
		setCityStateZip(property.getCityStateZip());
		setInternet(property.getInternet());
		setCableTv(property.getCableTv());
		setBalcony(property.getBalcony());
		setRoofTerrace(property.getRoofTerrace());
		setTerrace(property.getTerrace());
		setLift(property.getLift());
		setGarage(property.getGarage());
		setSecurity(property.getSecurity());
		setCityCentre(property.getCityCentre());
		setFurniture(property.getFurniture());
		setSwimmingPool(property.getSwimmingPool());
		setPatio(property.getPatio());
		setKitchen(property.getKitchen());
		setCluster(property.getCluster());
		setEco(property.getEco());
		setLat(property.getLat());
		setLng(property.getLng());
	}

	public List<String> getImageUrls() {
		return imageUrls;
	}

	public void setImageUrls(List<String> imageUrls) {
		this.imageUrls = imageUrls;
	}

}
