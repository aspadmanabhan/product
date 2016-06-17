package com.ecom;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory ctx;
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public Product createProduct(Product p) {
Session session=		ctx.openSession();

		
		session.saveOrUpdate(p);
		session.flush();
		return p ;
	}
	@Transactional(propagation = Propagation.SUPPORTS)
	public Product updateProduct(Product p)
	{
		     
		Session session=ctx.openSession();
		

	
	session.saveOrUpdate(p);
	session.flush();
	
	return p;
	}
	
	@Override
	@Transactional(propagation = Propagation.SUPPORTS)
	public Product delete(Product p) {
		Session session=ctx.openSession();
		Product obj =(Product)session.merge(p);
		session.delete(obj);
		session.flush();
	return p;
	}
public List<Product> getAllProducts()
{
	Session session=ctx.openSession();
   Query q=	session.createQuery("from Product");
   return q.list();
}
}
