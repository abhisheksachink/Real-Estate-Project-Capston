package com.capston.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.capston.model.Property;
import com.capston.model.User;
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
	
	
	@RequestMapping(value="/addProperty/{userId}", method = RequestMethod.POST)
	public String addToProperty(ModelMap map,@PathVariable("userId") Integer userId,HttpServletRequest request,HttpSession session ,Property property,User user) {
		
		String config=request.getParameter("configuration") ;
		String offerType=request.getParameter("offerType") ;
		Double offerCost=Double.parseDouble(request.getParameter("offerCost"));
		Double areaSqrft=Double.parseDouble(request.getParameter("areaSqft"));
		String city=request.getParameter("city") ;
		String address=request.getParameter("address") ;
		String street=request.getParameter("street") ;
		String picture=request.getParameter("picture") ;
		String status=request.getParameter("status") ;
		
		user.setUser_id(userId);
		property.setBroker(user);
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
	
	@RequestMapping(value="/deleteProperty/{propId}", method = RequestMethod.GET)
	public String removeProperty(ModelMap map,@PathVariable("propId") Integer propId,HttpServletRequest request,HttpSession session ,Property property) {
		


		pservice.removeProperty(propId);
		map.addAttribute("status","Property Deleted Successfully");
		return "broker1";
			
	
	}
	
	@RequestMapping(value="/updateProperty/{propId}/{configuration}/{offerType}/{offerCost}/{areaSqrft}/{city}/{addr}/{street}/{status}", method = RequestMethod.GET)
	public String updateProperty(ModelMap map,@PathVariable("propId") Integer propId,@PathVariable("configuration") String configuration,@PathVariable("offerType") String offerType,@PathVariable("offerCost") Double offerCost,@PathVariable("areaSqrft") Double areaSqrft,@PathVariable("city") String city,@PathVariable("addr") String addr,@PathVariable("street") String street,@PathVariable("status") String status,HttpServletRequest request,HttpSession session ,Property property,User user) {
		
		int userId=user.getUser_id();
		map.addAttribute("userId",userId);
		map.addAttribute("propId",propId);
		map.addAttribute("configuration",configuration);
		map.addAttribute("offerType",offerType);
		map.addAttribute("offerCost",offerCost);
		map.addAttribute("areaSqrft",areaSqrft);
		map.addAttribute("city",city);
		map.addAttribute("addr",addr);
		map.addAttribute("street",street);
		map.addAttribute("status",status);

		return "brokerupdate";
			
	
	}
	
	@RequestMapping(value="/updatePropertyNow/{userId}/{propId}", method = RequestMethod.GET)
	public String updatePropertyNow(ModelMap map,@PathVariable("userId") Integer userId,@PathVariable("propId") Integer propId,HttpServletRequest request,HttpSession session ,Property property,User user) {
		
		String config=request.getParameter("configuration") ;
		String offerType=request.getParameter("offerType") ;
		Double offerCost=Double.parseDouble(request.getParameter("offerCost"));
		Double areaSqrft=Double.parseDouble(request.getParameter("areaSqft"));
		String city=request.getParameter("city") ;
		String address=request.getParameter("address") ;
		String street=request.getParameter("street") ;
		String picture=request.getParameter("picture") ;
		String status=request.getParameter("status") ;
		
		user.setUser_id(userId);
		property.setPropId(propId);
		property.setBroker(user);
		property.setConfiguration(config);
		property.setOfferType(offerType);
		property.setOfferCost(offerCost);
		property.setAreaSqft(areaSqrft);
		property.setCity(city);
		property.setAddress(address);
		property.setStreet(street);
		property.setPicture(picture);
		property.setPstatus(status);
		pservice.editProperty(property);
		map.addAttribute("status","Property Updated Successfully");
		return "broker1";
			
	
	}

}
