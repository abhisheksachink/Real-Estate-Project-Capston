package com.capston.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.capston.model.Property;
import com.capston.model.User;


public interface PropertyRepository extends CrudRepository<Property, Integer>{
//	boolean existsByUserId(int broker);
//    Property findByUserId(int broker);
//    List<Property> findAllByUserId(final User broker);

}
