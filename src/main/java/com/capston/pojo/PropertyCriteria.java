package com.capston.pojo;

public class PropertyCriteria {
	private String config; // Flat/Shop/Plot
	private String offer; // Sale/Rent
	private String city; // Not specified then all
	private double minCost; // Not specified then 0
	private double maxCost; // Not specified then max double value
	private int broker;
	
	
	public PropertyCriteria() {
		super();
		// TODO Auto-generated constructor stub
	}


	


	public PropertyCriteria(String config, String offer, String city, double minCost, double maxCost, int broker) {
		super();
		this.config = config;
		this.offer = offer;
		this.city = city;
		this.minCost = minCost;
		this.maxCost = maxCost;
		this.broker = broker;
	}





	public String getConfig() {
		return config;
	}


	public void setConfig(String config) {
		this.config = config;
	}


	public String getOffer() {
		return offer;
	}


	public void setOffer(String offer) {
		this.offer = offer;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public double getMinCost() {
		return minCost;
	}


	public void setMinCost(double minCost) {
		this.minCost = minCost;
	}


	public double getMaxCost() {
		return maxCost;
	}


	public void setMaxCost(double maxCost) {
		this.maxCost = maxCost;
	}





	public int getBroker() {
		return broker;
	}





	public void setBroker(int broker) {
		this.broker = broker;
	}
	
	

}
