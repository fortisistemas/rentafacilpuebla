package com.fortisistemas.rfp.realstateProperty;

import java.io.Serializable;

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
	private Integer bathrooms;
	private Integer garageSize;
	private String description;
	private Boolean airConditioner;
	private Boolean internet;
	private Boolean cableTv;
	private Boolean balcony;
	private Boolean roofTerrace;
	private Boolean terrace;
	private Boolean lift;
	private Boolean garage;
	private Boolean security;
	private Boolean highStandard;
	private Boolean cityCentre;
	private Boolean furniture;
	private Boolean latitude;
	private Boolean longitude;

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

	public Integer getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(Integer bathrooms) {
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

	public Boolean getAirConditioner() {
		return airConditioner;
	}

	public void setAirConditioner(Boolean airConditioner) {
		this.airConditioner = airConditioner;
	}

	public Boolean getInternet() {
		return internet;
	}

	public void setInternet(Boolean internet) {
		this.internet = internet;
	}

	public Boolean getCableTv() {
		return cableTv;
	}

	public void setCableTv(Boolean cableTv) {
		this.cableTv = cableTv;
	}

	public Boolean getBalcony() {
		return balcony;
	}

	public void setBalcony(Boolean balcony) {
		this.balcony = balcony;
	}

	public Boolean getRoofTerrace() {
		return roofTerrace;
	}

	public void setRoofTerrace(Boolean roofTerrace) {
		this.roofTerrace = roofTerrace;
	}

	public Boolean getTerrace() {
		return terrace;
	}

	public void setTerrace(Boolean terrace) {
		this.terrace = terrace;
	}

	public Boolean getLift() {
		return lift;
	}

	public void setLift(Boolean lift) {
		this.lift = lift;
	}

	public Boolean getGarage() {
		return garage;
	}

	public void setGarage(Boolean garage) {
		this.garage = garage;
	}

	public Boolean getSecurity() {
		return security;
	}

	public void setSecurity(Boolean security) {
		this.security = security;
	}

	public Boolean getHighStandard() {
		return highStandard;
	}

	public void setHighStandard(Boolean highStandard) {
		this.highStandard = highStandard;
	}

	public Boolean getCityCentre() {
		return cityCentre;
	}

	public void setCityCentre(Boolean cityCentre) {
		this.cityCentre = cityCentre;
	}

	public Boolean getFurniture() {
		return furniture;
	}

	public void setFurniture(Boolean furniture) {
		this.furniture = furniture;
	}

	public Boolean getLatitude() {
		return latitude;
	}

	public void setLatitude(Boolean latitude) {
		this.latitude = latitude;
	}

	public Boolean getLongitude() {
		return longitude;
	}

	public void setLongitude(Boolean longitude) {
		this.longitude = longitude;
	}

}
