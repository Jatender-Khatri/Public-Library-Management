package com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Connection.Connections;
import com.dao.AuthorEntityDao;
import com.models.AuthorEntitiy;

public class AuthorEntityDaoImpl implements AuthorEntityDao {

	@Override
	public Integer addAuthor(AuthorEntitiy author) {
		Integer roll = null;
		try {
			SessionFactory factory = Connections.getConnection();
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.save(author);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public List<AuthorEntitiy> getAuthors() {
		List<AuthorEntitiy> list = new ArrayList<>();
		try {
			
			SessionFactory factory = Connections.getConnection();
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			list = session.createQuery("From AuthorEntitiy").list();
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Integer deleteAuthor(AuthorEntitiy author) {
		Integer roll = null;
		try {
			SessionFactory factory = Connections.getConnection();
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.remove(author);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public AuthorEntitiy getAuthorById(int id) {
		AuthorEntitiy a = null;
		try {
			SessionFactory factory = Connections.getConnection();
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			a = session.get(AuthorEntitiy.class, id);

			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

	@Override
	public Integer updateAuthor(AuthorEntitiy author) {
		Integer roll = null;
		try {
			SessionFactory factory = Connections.getConnection();
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.update(author);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public AuthorEntitiy getAuthorByName(String name) {
		AuthorEntitiy author = null;
		try {
			SessionFactory factory = Connections.getConnection();
			Session session = factory.openSession();

			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("From AuthorEntitiy a where a.authorName=:n");
			query.setParameter("n", name);
			author = (AuthorEntitiy)query.getSingleResult();
			
			transaction.commit();
			System.out.println("Successfully fetched.");
			// factory.close();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error : " + e.getMessage());
		}
		return author;
	}

}
