package com.ecom;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class UserDAOImpl implements UserDAO {
@Autowired
SessionFactory ctx; 
@Transactional
	public USER_AUTHENTICATION addUser(USER_AUTHENTICATION a) {
Session  session=ctx.openSession();
a.setENABLED(true);
session.saveOrUpdate(a);
	return a;
	}
 @Transactional
	public USER_AUTHENTICATION deleteUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.delete(a);
		return a;
	}
@Transactional
	public USER_AUTHENTICATION editUser(USER_AUTHENTICATION a) {
		// TODO Auto-generated method stub
		Session session=ctx.openSession();
		session.saveOrUpdate(a);
		return a;
	}

	public List viewAllUsers() {
	Session session=ctx.openSession();
	
		// TODO Auto-generated method stub
		return session.createQuery("from USER_AUTHENTICATION").list();
	}
	

}
