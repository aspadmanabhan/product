package com.ecom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonalComputerServiceImpl implements PersonalComputerService {

	@Autowired
	PersonalComputerDAO dao;
	@Override
	public PersonalComputer addPersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.addPersonalComputer(p);
	}

	@Override
	public PersonalComputer updatePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.updatePersonalComputer(p);
	}

	@Override
	public PersonalComputer deletePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		return dao.deletePersonalComputer(p);
	}

	@Override
	public List getAllPersonalComputers() {
		// TODO Auto-generated method stub
		return dao.getAllPersonalComputer();
	}

}
