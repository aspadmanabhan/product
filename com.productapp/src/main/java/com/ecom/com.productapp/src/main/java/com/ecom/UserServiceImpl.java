package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl  implements UserService{

	@Autowired
	UserDAO dao;
	public USER_AUTHENTICATION addUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		return dao.addUser(a);
	}

	public USER_AUTHENTICATION updateUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		return dao.editUser(a);
	}

	public USER_AUTHENTICATION deleteUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		return dao.deleteUser(a);
	}

	public List getAllUsers() {
		// TODO Auto-generated method stub
		return dao.viewAllUsers();
	}

}
