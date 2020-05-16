package com.skilldistillery.beers_of_the_world.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beers_of_the_world.entities.Beer;

@Service
@Transactional
public class BeersOfTheWorldDAOIpml implements BeersOfTheWorldDAO{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Beer findById(int id) {
		return em.find(Beer.class, id);
	}
	
	@Override
	public List<Beer> getBeers() {
		String jpql = "SELECT beer FROM Beer beer";
		List<Beer> beers;
		beers = em.createQuery(jpql, Beer.class).getResultList();
		return beers;
	}
	
}
