package com.ecom;
import java.util.List;
public interface PersonalComputerService {
	public PersonalComputer addPersonalComputer(PersonalComputer p);
	public PersonalComputer updatePersonalComputer(PersonalComputer p);
	public PersonalComputer deletePersonalComputer(PersonalComputer p);
  public List getAllPersonalComputers();
}
