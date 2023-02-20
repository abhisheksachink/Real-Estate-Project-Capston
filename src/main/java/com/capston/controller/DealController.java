package com.capston.controller;

import java.time.LocalDate;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.capston.exception.DealNotAvailableException;
import com.capston.model.Deal;
import com.capston.model.Property;
import com.capston.model.User;
import com.capston.service.DealService;
import com.capston.service.PropertyService;

@Controller
public class DealController {
	
	@Autowired
	DealService dservice;
	
	@Autowired
	PropertyService pservice;

	@RequestMapping(value="/addtoDeal/{propId}/{userId}/{dealcost}", method = RequestMethod.GET)
	public String addToDeal(ModelMap map,@PathVariable("userId") Integer userId,@PathVariable("dealcost") Double dealcost,@PathVariable("propId") Integer propId,HttpServletRequest request,HttpSession session ,Deal deal,Property property,User user) throws DealNotAvailableException{
	
		try {
		user.setUser_id(userId);
		property.setPropId(propId);
		property.setPstatus("Sold");
		user.setUser_id(userId);
		property.setBroker(user);
		deal.setDealCost(dealcost);
		deal.setProperty1(property);
		deal.setDealDate(LocalDate.now());
		deal.setUser1(user);
		
		dservice.saveDeal(deal);
		int dealId=deal.getDealId();
//		Optional<Deal> d=dservice.showDeal(dealId);
//		pservice.editProperty(property);
		map.addAttribute("propId",propId);
		map.addAttribute("dealcost",dealcost);
		map.addAttribute("dealId",dealId);
		map.addAttribute("dealDate",LocalDate.now());
		map.addAttribute("proptype",property.getOfferType());
		map.addAttribute("addr",property.getAddress());
		map.addAttribute("city",property.getCity());
		map.addAttribute("area",property.getAreaSqft());
		map.addAttribute("status","Deal Successfully with following details:-");
		}
		catch(Exception e) {
			throw new DealNotAvailableException("Same Customer HAS NOT ALLOWED TO Already Booked Property");
		}
		
		return "deal";
			
	
	}
	
}
