package com.capston.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capston.model.User;
import com.capston.repository.UserRepository;


@Service
public class LoginService {

	@Autowired
	UserRepository repository;
	
	public boolean validateUser(String userName, String password) {
		
		List<User> users = (List<User>)repository.findAll();
		boolean isValid = false;
		for(User usr: users) {
			if(usr.getUser_name().equals(userName) && usr.getUser_pwd().equals(password)) {
				
				
				isValid = true;
			}
			
		}
		return isValid;
		
		/*
		 * if(userName.equals("john") && password.equals("1234")) { return true; } else
		 * { return false; }
		 */
	}
	
	public int getUserId(String userName, String password) {
		List<User> users = (List<User>)repository.findAll();
	
		int userid = 0;
		for(User usr: users) {
			if(usr.getUser_name().equals(userName) && usr.getUser_pwd().equals(password)) {
				userid=usr.getUser_id();
				
			}
			
	}
		return userid;
		
	}
	public String getUserRole(String userName, String password) {
		List<User> users = (List<User>)repository.findAll();
	
		String userRole = null;
		for(User usr: users) {
			if(usr.getUser_name().equals(userName) && usr.getUser_pwd().equals(password)) {
				userRole=usr.getRole();
				
			}
			
	}
		return userRole;
		
	}
}
