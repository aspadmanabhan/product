package com.ecom;
import java.util.List;
public interface PersonalComputerService {
	public PersonalComputer addPersonalComputer(PersonalComputer p);
	public PersonalComputer updatePersonalComputer(PersonalComputer p);
	public PersonalComputer deletePersonalComputer(PersonalComputer p);
  public List getAllPersonalComputers();
  public List getSinglePersonalComputer(int id);
  public USER_AUTHENTICATION addUser(USER_AUTHENTICATION a);
	public USER_AUTHENTICATION updateUser(USER_AUTHENTICATION a);
	public USER_AUTHENTICATION deleteUser(USER_AUTHENTICATION a);
	public java.util.List getAllUsers();
	public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION u);
}
