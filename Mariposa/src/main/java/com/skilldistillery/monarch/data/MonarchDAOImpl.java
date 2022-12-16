package com.skilldistillery.monarch.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.monarch.entities.Monarch;

@Service
@Transactional
public class MonarchDAOImpl implements MonarchDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Monarch findById(int id) {
		em.find(Monarch.class, id);
		return null;
	}

	@Override
	public List<Monarch> findAll() {
		String jpql = "SELECT m FROM Monarch m";
		return em.createQuery(jpql, Monarch.class).getResultList();
	}

	@Override
	public Monarch create(Monarch butterfly) {
		
		return null;
	}

	@Override
	public Monarch update(int id, Monarch butterfly) {
		
		return null;
	}

	@Override
	public boolean delete(int id) {
		
		return false;
	}


}
