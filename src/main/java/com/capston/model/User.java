package com.capston.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "USER12345")
public class User {
	
	@Id
	private int user_id;
	
	private String user_name;
	
	private String user_pwd;

	public User() {
		
	}



	public User(int user_id, String user_name, String user_pwd) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
	}



	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	
	

}
