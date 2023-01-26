package com.capston.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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
	
	@ManyToOne
	@JoinColumn(name="user_id", nullable=false)
	private User broker;
	
	@OneToOne(mappedBy="property1",cascade=CascadeType.ALL,fetch=(FetchType.LAZY))//this user1 is mapped by Address table User
	private Deal deal;

	public Property(int propId, String configuration, String offerType, double offerCost, double areaSqft, String city,
			String address, String street, String picture, String pstatus, User broker, Deal deal) {
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
		this.broker = broker;
		this.deal = deal;
	}

	public Property() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	





	
	
	
	
}
