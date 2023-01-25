package com.capston.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.capston.model.Property;
import com.capston.model.User;
import com.capston.service.LoginService;
import com.capston.service.PropertyService;



@Controller
public class HomeController {
	
	
	@Autowired
	LoginService service;
	
	@Autowired
	PropertyService pservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView displayHello() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("message1", "APR Real Estate! ");
		mav.addObject("message2", "India's Cheapest and Best Real Estate Site ! ");
		//map.addAttribute("message", "LOGIN PAGE!");
		return mav;
	}

	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView displayHome() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("message1", "Abhii Kart! ");
		mav.addObject("message2", "India's Cheapest and Best Products Shopping Site ! ");
		//map.addAttribute("message", "LOGIN PAGE!");
		return mav;
	}
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView displaylogin() {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("message", "LOGIN PAGE!");
		//map.addAttribute("message", "LOGIN PAGE!");
		return mav;
	}
	
	@RequestMapping(value = "/processLogin", method = RequestMethod.POST)
	public ModelAndView displayProduct(ModelMap map, HttpServletRequest request,@ModelAttribute("user") User user) {
		
		String userName = request.getParameter("uname");
		String password = request.getParameter("pwd");
		String role =request.getParameter("role");
		int userId=service.getUserId(userName, password);
		if(service.validateUser(userName, password) && role.equalsIgnoreCase("Broker")) {
			map.addAttribute("name",userName);
			map.addAttribute("userId",userId);
			ModelAndView mav1 = new ModelAndView("broker1");
			List<Property> property= pservice.getProperty();
			
			mav1.addObject("allProperties", property);
			
			return mav1;
			
		}
		else if(service.validateUser(userName, password) && role.equalsIgnoreCase("Customer")){
			map.addAttribute("name",userName);
			map.addAttribute("userId",userId);
			ModelAndView mav2 = new ModelAndView("property");
			List<Property> property= pservice.getProperty();
			mav2.addObject("allProperties", property);
			return mav2;
			
		}
		else {
			ModelAndView mav2 = new ModelAndView("error");
			return mav2;
			
		}
		
	}
	
}
