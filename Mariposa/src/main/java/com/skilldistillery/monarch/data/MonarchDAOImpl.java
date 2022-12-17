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
		return em.find(Monarch.class, id);
		
	}

	@Override
	public List<Monarch> findAll() {
		String jpql = "SELECT m FROM Monarch m";
		return em.createQuery(jpql, Monarch.class).getResultList();
	}

	@Override
	public Monarch create(Monarch butterfly) {
		em.persist(butterfly);
		em.flush();
		return butterfly;
	}

	@Override
	public Monarch update(int id, Monarch butterfly) {
		Monarch updated = em.find(Monarch.class, id);

		if (updated != null) {
			updated.setDate(butterfly.getDate());
			updated.setCity(butterfly.getCity());
			updated.setState(butterfly.getState());
			updated.setLatitude(butterfly.getLatitude());
			updated.setLongitude(butterfly.getLongitude());
			updated.setAmount(butterfly.getAmount());
			updated.setDescription(butterfly.getDescription());
			updated.setImageUrl(butterfly.getImageUrl());
			
			em.persist(updated);
			em.flush();
		} 
		return updated;
	}

	@Override
	public boolean delete(int id) {
		boolean deleted = false;

		Monarch butterfly = em.find(Monarch.class, id);

		if (butterfly != null) {
			em.remove(butterfly);
			deleted = !em.contains(butterfly);

		}
		return deleted;
	}

}
