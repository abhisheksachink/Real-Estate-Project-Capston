package com.capston.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Property12345")
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int propId;
	private String configuration; // Flat/Shop/Plot
	private String offerType; // Sell/Rent
	private double offerCost;
	private double areaSqft;
	private String city;
	private String address;
	private String street;
	private String picture;
	private String pstatus; // Available(true)/ Sold(false)
	
	
	
	
	public Property() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Property(int propId, String configuration, String offerType, double offerCost, double areaSqft, String city,
			String address, String street, String picture, String pstatus) {
		super();
		this.propId = propId;
		this.configuration = configuration;
		this.offerType = offerType;
		this.offerCost = offerCost;
		this.areaSqft = areaSqft;
		this.city = city;
		this.address = address;
		this.street = street;
		this.picture = picture;
		this.pstatus = pstatus;
	}
	public int getPropId() {
		return propId;
	}
	public void setPropId(int propId) {
		this.propId = propId;
	}
	public String getConfiguration() {
		return configuration;
	}
	public void setConfiguration(String configuration) {
		this.configuration = configuration;
	}
	public String getOfferType() {
		return offerType;
	}
	public void setOfferType(String offerType) {
		this.offerType = offerType;
	}
	public double getOfferCost() {
		return offerCost;
	}
	public void setOfferCost(double offerCost) {
		this.offerCost = offerCost;
	}
	public double getAreaSqft() {
		return areaSqft;
	}
	public void setAreaSqft(double areaSqft) {
		this.areaSqft = areaSqft;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getPstatus() {
		return pstatus;
	}
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	
	
	
	














	
	
	
	
}
