package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.UserInfo;
@Repository
public class UserInfoDaoImpl implements UserInfoDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public UserInfo save(UserInfo entity) {
		try {
			sessionFactory.getCurrentSession().save(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}

	}

	@Override
	public UserInfo update(UserInfo entity) {
		try {
			sessionFactory.getCurrentSession().update(entity);
			return (entity) ;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public boolean delete(long id) {
		try {
			UserInfo entity = sessionFactory.getCurrentSession().get(UserInfo.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public UserInfo getById(long id) {
		try {
			UserInfo entity = sessionFactory.getCurrentSession().get(UserInfo.class, id);
			return entity;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public List<UserInfo> getAll() {
		
		try {
			List<UserInfo> entityList = (List<UserInfo>) sessionFactory.getCurrentSession().createQuery("FROM UserInfo").setFetchSize(50).list();
			return entityList;
		} catch (HibernateException e) {
			return null;
		}
	}

	@Override
	public UserInfo loadUserByUsername(String username) {
		UserInfo userInfoEntity = (UserInfo)sessionFactory.getCurrentSession().createQuery("FROM UserInfo WHERE username=:username")
		.setParameter("username", username).list().get(0);
		return userInfoEntity;
	}

}
