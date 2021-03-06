package com.anahitagardens.anahita.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.Supplier;
import com.anahitagardens.anahita.model.User;

@Repository
@Service
public interface UserDao {
	@Autowired
	public String insertUser (User u);
	public String updateUser (String user_name,User u);
	public String viewUsers();
	public User viewOneUser(String user_name);
	public List<User> ListUser();

}


