package com.capston.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.capston.model.Property;
import com.capston.service.PropertyService;




@Controller
public class BrokerController {
	
	@Autowired
	PropertyService pservice;
	
//	@RequestMapping(value = "/addToProperty", method = RequestMethod.GET)
//	public ModelAndView getUsers() {
//		ModelAndView mav = new ModelAndView("listUsers");
//		List<Property> property = service.getUsers();
//		mav.addObject("allUsers", users);
//		return mav;
//		
//	}
	
	
	@RequestMapping(value="/addProperty", method = RequestMethod.POST)
	public String addToProperty(ModelMap map,HttpServletRequest request,HttpSession session ,Property property) {
		
		String config=request.getParameter("configuration") ;
		String offerType=request.getParameter("offerType") ;
		Double offerCost=Double.parseDouble(request.getParameter("offerCost"));
		Double areaSqrft=Double.parseDouble(request.getParameter("areaSqft"));
		String city=request.getParameter("city") ;
		String address=request.getParameter("address") ;
		String street=request.getParameter("street") ;
		String picture=request.getParameter("picture") ;
		String status=request.getParameter("status") ;
		property.setConfiguration(config);
		property.setOfferType(offerType);
		property.setOfferCost(offerCost);
		property.setAreaSqft(areaSqrft);
		property.setCity(city);
		property.setAddress(address);
		property.setStreet(street);
		property.setPicture(picture);
		property.setPstatus(status);
		pservice.saveProperty(property);
		map.addAttribute("status","Property Saved Successfully");
		return "broker1";
			
	
	}

}
