package com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Connection.Connections;
import com.dao.CategoryEntityDao;
import com.models.CategoryEntity;

public class CategoryEntityDaoImpl implements CategoryEntityDao{
	static SessionFactory factory = Connections.getConnection();
	@Override
	public Integer addCategory(CategoryEntity category) {
		Integer roll = null;
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.save(category);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public List<CategoryEntity> getCategorys() {
		List<CategoryEntity> list = new ArrayList<>();
		try {
			
			
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			list = session.createQuery("From CategoryEntity").list();
			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Integer deleteCategory(CategoryEntity category) {
		Integer roll = null;
		try {
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.remove(category);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public CategoryEntity getCategoryById(int id) {
		CategoryEntity a = null;
		try {
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			a = session.get(CategoryEntity.class, id);

			transaction.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return a;
	}

	@Override
	public Integer updateCategory(CategoryEntity category) {
		Integer roll = null;
		try {
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();

			session.update(category);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return roll;
	}

	@Override
	public CategoryEntity getCategoryByName(String name) {
		CategoryEntity author = null;
		try {
			
			Session session = factory.openSession();

			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("From CategoryEntity a where a.name=:n");
			query.setParameter("n", name);
			author = (CategoryEntity)query.getSingleResult();
			
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
