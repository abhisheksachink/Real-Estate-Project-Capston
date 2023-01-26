package com.capston.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capston.model.Deal;

import com.capston.repository.DealRepository;

@Service
public class DealService {
	
	@Autowired
	DealRepository dealrepository;
	
	
	public List<Deal> getDeal(){
		
		List<Deal> dealss = (List<Deal>)dealrepository.findAll();
		return dealss;
	}

	public void saveDeal(Deal deal) {
		dealrepository.save(deal);
		
	}
	
	public Optional<Deal> showDeal(int dealId) {
		Optional<Deal> deal =dealrepository.findById(dealId);
		return deal;
		
	}
}
