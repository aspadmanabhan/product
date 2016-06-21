package com.ecom;

import java.util.List;

public interface PersonalComputerDAO {
	public PersonalComputer addPersonalComputer(PersonalComputer p);
    public PersonalComputer updatePersonalComputer(PersonalComputer p);
    public PersonalComputer deletePersonalComputer(PersonalComputer d);
    public List getAllPersonalComputer();
    public List getPersonalComputer(int id);
    public USER_AUTHENTICATION addUser(USER_AUTHENTICATION a);
    public  USER_AUTHENTICATION deleteUser(USER_AUTHENTICATION a);
    public USER_AUTHENTICATION editUser(USER_AUTHENTICATION a);
    public java.util.List viewAllUsers();
    public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION u);
}
