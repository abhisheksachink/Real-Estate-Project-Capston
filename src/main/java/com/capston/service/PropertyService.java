package com.capston.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capston.model.Property;
import com.capston.model.User;
import com.capston.repository.PropertyRepository;
import com.capston.repository.UserRepository;


@Service
public class PropertyService {
	
	
	@Autowired
	PropertyRepository propertyRepository;
	
	@Autowired
	UserRepository userRepository;
	
	public List<Property> getProperty(){
		
		List<Property> property = (List<Property>)propertyRepository.findAll();
		return property;
	}	
	
//	public List<Property> viewProperty(int userId) {
//		Optional<User> user1 = userRepository.findById(userId);
//		List<Property> property= propertyRepository.findAllByUserId(user1.get());
//		return property;
//	}
	
	public void saveProperty(Property property) {
		propertyRepository.save(property);
	}
	public void removeProperty(int propId) {
		propertyRepository.deleteById(propId);;
	}
	public void editProperty(Property property) {
		int propid=property.getPropId();
		propertyRepository.deleteById(propid);
		propertyRepository.save(property);
	}

}
