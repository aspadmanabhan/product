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
	@Override
	public PersonalComputer addPersonalComputer(PersonalComputer p) {
		Session session=ctx.openSession();
		session.saveOrUpdate(p);
		session.flush();
		return p;
		// TODO Auto-generated method stub
		
		
	}
	@Transactional
	@Override
	public PersonalComputer updatePersonalComputer(PersonalComputer p) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(p);
		session.flush();
		return p;
	}

	@Transactional
	@Override
	
	public PersonalComputer deletePersonalComputer(PersonalComputer d) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.delete(d);
		session.flush();
		return d;
		
	}

	@Override
	public List getAllPersonalComputer() {

		Session session=ctx.openSession();
Query q=	 	session.createQuery("from PersonalComputer");
		return q.list();
		
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List getPersonalComputer(int id)
	{
	Session session=ctx.openSession();
return session.createQuery("FROM PersonalComputer c where c.ProductId="+id).list();
	}

}
