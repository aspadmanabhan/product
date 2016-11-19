package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonalComputerServiceImpl implements PersonalComputerService {

	@Autowired
	PersonalComputerDAO dao;
	
	
	public PersonalComputer addPersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.addPersonalComputer(p);
	}

	
	public PersonalComputer updatePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.updatePersonalComputer(p);
	}

	
	public PersonalComputer deletePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.deletePersonalComputer(p);
	}


	public List getAllPersonalComputers() {
		// TODO Auto-generated method stub
		return dao.getAllPersonalComputer();
	}
  public List getSinglePersonalComputer(int id)
  {
	  return dao.getPersonalComputer(id);
  }
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
	public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION u)
	{
		dao.authorizeuser(u);
		return u;
	}


	
}
