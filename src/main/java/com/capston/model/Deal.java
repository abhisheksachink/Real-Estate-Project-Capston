package com.capston.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Deal12345")
public class Deal {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="deal_id")
	private int dealId;
	
	@Column(name="deal_date",nullable=false)
	private LocalDate dealDate;
	@Column(name="deal_cost",nullable=false)
	private double dealCost;
	
	@OneToOne(fetch=(FetchType.LAZY),optional=false)
	@JoinColumn(name="propId",nullable=false)
	private Property property1;
	
	@OneToOne(fetch=(FetchType.LAZY),optional=false)
	@JoinColumn(name="user_id",nullable=false)
	private User user1;

	public Deal() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Deal(int dealId, LocalDate dealDate, double dealCost, Property property1, User user1) {
		super();
		this.dealId = dealId;
		this.dealDate = dealDate;
		this.dealCost = dealCost;
		this.property1 = property1;
		this.user1 = user1;
	}

	
}
