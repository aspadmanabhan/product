package com.ecom;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class PersonalComputerDAOImpl implements PersonalComputerDAO {

	@Autowired
	SessionFactory ctx;
	@Transactional
	
	public PersonalComputer addPersonalComputer(PersonalComputer p) {
		Session session=ctx.openSession();
		session.saveOrUpdate(p);
		session.flush();
		return p;
		// TODO Auto-generated method stub
		
		
	}
	@Transactional
	
	public PersonalComputer updatePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(p);
		session.flush();
		return p;
	}

	@Transactional
	
	
	public PersonalComputer deletePersonalComputer(PersonalComputer d) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.delete(d);
		session.flush();
		return d;
		
	}


	public List getAllPersonalComputer() {

		Session session=ctx.openSession();
Query q=	 	session.createQuery("from PersonalComputer");
		return q.list();
		
		// TODO Auto-generated method stub
		
	}
	
	
	
	public List getPersonalComputer(int id)
	{
	Session session=ctx.openSession();
return session.createQuery("FROM PersonalComputer c where c.ProductId="+id).list();
	}
	@Transactional
	public USER_AUTHENTICATION addUser(USER_AUTHENTICATION a) {
Session  session=ctx.openSession();
a.setENABLED(true);
session.saveOrUpdate(a);
session.flush();	
return a;

	}
 @Transactional
	public USER_AUTHENTICATION deleteUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.delete(a);
		session.flush();
		return a;
	}
@Transactional
	public USER_AUTHENTICATION editUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(a);
		session.flush();
		return a;
	}

	public List viewAllUsers() {
	Session session=ctx.openSession();
	
		// TODO Auto-generated method stub
		return session.createQuery("from USER_AUTHENTICATION").list();
	}
	@Transactional
	public USER_AUTHORIZATION authorizeuser(USER_AUTHORIZATION u)
	{
	Session session=ctx.openSession();
	session.saveOrUpdate(u);
	return u;
	}
	
}
