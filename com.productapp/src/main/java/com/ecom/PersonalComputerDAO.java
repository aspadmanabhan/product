package com.ecom;

import java.util.List;

public interface PersonalComputerDAO {
	public PersonalComputer addPersonalComputer(PersonalComputer p);
    public PersonalComputer updatePersonalComputer(PersonalComputer p);
    public PersonalComputer deletePersonalComputer(PersonalComputer d);
    public List getAllPersonalComputer();
    public List getPersonalComputer(int id);
}
