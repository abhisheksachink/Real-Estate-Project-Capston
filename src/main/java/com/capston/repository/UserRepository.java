package com.capston.repository;

import org.springframework.data.repository.CrudRepository;

import com.capston.model.User;



public interface UserRepository extends CrudRepository<User, Integer> {
//	public User findByUserId(int user_Id);

}
