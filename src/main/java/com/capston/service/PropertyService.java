package com.capston.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capston.model.Property;
import com.capston.repository.PropertyRepository;


@Service
public class PropertyService {
	
	
	@Autowired
	PropertyRepository propertyRepository;
	
	public List<Property> getProperty(){
		
		List<Property> property = (List<Property>)propertyRepository.findAll();
		return property;
	}	
	
	public void saveProperty(Property property) {
		propertyRepository.save(property);
	}

}
