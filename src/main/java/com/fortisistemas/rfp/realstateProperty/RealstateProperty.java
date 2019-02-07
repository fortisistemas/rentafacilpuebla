package com.fortisistemas.rfp.realstateProperty;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rs_property")
public class RealstateProperty implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String type;
	private String transaction;
	private Integer price;
	private Integer area;
	private Integer bedrooms;
	private Float bathrooms;
	private Integer garageSize;
	@Column(columnDefinition = "TEXT")
	private String description;
	private String street;
	private String neighborghood;
	private String cityStateZip;
	private String internet;
	private String cableTv;
	private String balcony;
	private String roofTerrace;
	private String terrace;
	private String lift;
	private String garage;
	private String security;
	private String cityCentre;
	private String furniture;
	private String swimmingPool;
	private String patio;
	private String kitchen;
	private String cluster;
	private String eco;
	private String lat;
	private String lng;
	private String highlight;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTransaction() {
		return transaction;
	}

	public void setTransaction(String transaction) {
		this.transaction = transaction;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getArea() {
		return area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

	public Integer getBedrooms() {
		return bedrooms;
	}

	public void setBedrooms(Integer bedrooms) {
		this.bedrooms = bedrooms;
	}

	public Float getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(Float bathrooms) {
		this.bathrooms = bathrooms;
	}

	public Integer getGarageSize() {
		return garageSize;
	}

	public void setGarageSize(Integer garageSize) {
		this.garageSize = garageSize;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getInternet() {
		return internet;
	}

	public void setInternet(String internet) {
		this.internet = internet;
	}

	public String getCableTv() {
		return cableTv;
	}

	public void setCableTv(String cableTv) {
		this.cableTv = cableTv;
	}

	public String getBalcony() {
		return balcony;
	}

	public void setBalcony(String balcony) {
		this.balcony = balcony;
	}

	public String getRoofTerrace() {
		return roofTerrace;
	}

	public void setRoofTerrace(String roofTerrace) {
		this.roofTerrace = roofTerrace;
	}

	public String getTerrace() {
		return terrace;
	}

	public void setTerrace(String terrace) {
		this.terrace = terrace;
	}

	public String getLift() {
		return lift;
	}

	public void setLift(String lift) {
		this.lift = lift;
	}

	public String getGarage() {
		return garage;
	}

	public void setGarage(String garage) {
		this.garage = garage;
	}

	public String getSecurity() {
		return security;
	}

	public void setSecurity(String security) {
		this.security = security;
	}

	public String getCityCentre() {
		return cityCentre;
	}

	public void setCityCentre(String cityCentre) {
		this.cityCentre = cityCentre;
	}

	public String getFurniture() {
		return furniture;
	}

	public void setFurniture(String furniture) {
		this.furniture = furniture;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getNeighborghood() {
		return neighborghood;
	}

	public void setNeighborghood(String neighborghood) {
		this.neighborghood = neighborghood;
	}

	public String getCityStateZip() {
		return cityStateZip;
	}

	public void setCityStateZip(String cityStateZip) {
		this.cityStateZip = cityStateZip;
	}

	public String getSwimmingPool() {
		return swimmingPool;
	}

	public void setSwimmingPool(String swimmingPool) {
		this.swimmingPool = swimmingPool;
	}

	public String getPatio() {
		return patio;
	}

	public void setPatio(String patio) {
		this.patio = patio;
	}

	public String getKitchen() {
		return kitchen;
	}

	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}

	public String getCluster() {
		return cluster;
	}

	public void setCluster(String cluster) {
		this.cluster = cluster;
	}

	public String getEco() {
		return eco;
	}

	public void setEco(String eco) {
		this.eco = eco;
	}

	public String getHighlight() {
		return highlight;
	}

	public void setHighlight(String highlight) {
		this.highlight = highlight;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RealstateProperty other = (RealstateProperty) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
