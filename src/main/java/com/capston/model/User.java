package com.capston.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "USER12345")
public class User {
	
	@Id
	private int user_id;
	
	private String user_name;
	
	private String user_pwd;
	
	private String role;
	
	@OneToMany(mappedBy="broker", cascade=CascadeType.ALL)
	private List<Property> properties;

	
	@OneToOne(mappedBy="user1",cascade=CascadeType.ALL,fetch=(FetchType.LAZY))
	private Deal deal;


	public User(int user_id, String user_name, String user_pwd, String role, List<Property> properties, Deal deal) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.role = role;
		this.properties = properties;
		this.deal = deal;
	}


	public User() {
		super();
		// TODO Auto-generated constructor stub
	}



	
	

}
