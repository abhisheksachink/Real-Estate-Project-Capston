package com.capston.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.capston.dao.PropertyDao;
import com.capston.model.Property;



public interface PropertyRepository extends JpaRepository<Property, Integer>{
//	boolean existsByUserId(int broker);
//    Property findByUserId(int broker);
//    List<Property> findAllByUserId(final User broker);
	List<Property> findByCity(@Param("city")String city);
	List<Property> findByOfferType(@Param("offerType")String offerType);
	List<Property> findByconfiguration(@Param("configuration")String configuration);
	
	
//	@Query( "SELECT Property12345.propId, Property12345.address from Property12345 where user_Id= :userId")
//	List<Property> findByUserId(@Param("user_Id")int userId);

}
