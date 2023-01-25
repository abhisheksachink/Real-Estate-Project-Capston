package com.capston.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capston.model.User;
import com.capston.repository.UserRepository;



@Service
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	public List<User> getUsers(){
	
		List<User> users = (List<User>)userRepository.findAll();
		return users;
	}	
	
	public void saveUser(User user) {
		userRepository.save(user);
	}

}
