package com.capston.dao;

import java.util.List;

import com.capston.model.Property;
import com.capston.pojo.PropertyCriteria;

public interface PropertyDao {
	public List<Property> fetchPropertyByCriteria(PropertyCriteria criteria);

}
