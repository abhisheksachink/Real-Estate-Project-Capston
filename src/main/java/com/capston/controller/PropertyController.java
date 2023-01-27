package com.capston.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.capston.model.Property;
import com.capston.service.PropertyService;

@Controller
public class PropertyController {
	@Autowired
	PropertyService pservice;

	@RequestMapping(value="/fetchPropertyByCity", method = RequestMethod.POST)
	public String fetchPropertyByCity(ModelMap map,HttpServletRequest request,HttpSession session ,Property property) {
		
	
		String city=request.getParameter("cityInput");
		List<Property> p1=pservice.getPropertyByCity(city);
		map.addAttribute("status","Property fetched Successfully by city");
		map.addAttribute("allProperties",p1);
		return "property";
			
	
	}
	
	@RequestMapping(value="/fetchPropertyByOffer", method = RequestMethod.POST)
	public String fetchPropertyByOffer(ModelMap map,HttpServletRequest request,HttpSession session ,Property property) {
		
	
		String offer=request.getParameter("offerType");
		List<Property> p1=pservice.getPropertyByOffer(offer);
		map.addAttribute("status","Property Fetched Successfully by offertype");
		map.addAttribute("allProperties",p1);
		return "property";
			
	
	}
	
	@RequestMapping(value="/fetchPropertyByPropType", method = RequestMethod.POST)
	public String fetchPropertyByPropType(ModelMap map,HttpServletRequest request,HttpSession session ,Property property) {
		
	
		String proptype=request.getParameter("configuration");
		List<Property> p1=pservice.getPropertyByConfiguration(proptype);
		map.addAttribute("status","Property Fetched Successfully by property type");
		map.addAttribute("allProperties",p1);
		return "property";
			
	
	}

}
