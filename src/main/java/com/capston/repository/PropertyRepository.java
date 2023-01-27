package com.capston.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.capston.model.Property;



public interface PropertyRepository extends CrudRepository<Property, Integer>{
//	boolean existsByUserId(int broker);
//    Property findByUserId(int broker);
//    List<Property> findAllByUserId(final User broker);
	List<Property> findByCity(@Param("city")String city);
	List<Property> findByOfferType(@Param("offerType")String offerType);
	List<Property> findByconfiguration(@Param("configuration")String configuration);

}
