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

	@Override
	public boolean deleteBeer(int id) {
		Beer beer = em.find(Beer.class, id);
		em.remove(beer);
		em.flush();
		em.close();
		return !(em.contains(beer));
	}
	
	@Override
	public Beer updateBeer(int id, Beer _beer) {
		System.out.println("*****************" + id);
		System.out.println(_beer);
		Beer beer = em.find(Beer.class, id);
		beer.setId(id);
		beer.setName(_beer.getName());
		beer.setDescription(_beer.getDescription());
		beer.setBrewery(_beer.getBrewery());
		beer.setSrm(_beer.getSrm());
		beer.setRating(_beer.getRating());
		beer.setStyle(_beer.getStyle());
		beer.setAbv(_beer.getAbv());
		em.flush();
		em.close();
		return beer;
		
	}
	
	@Override
	public Beer createBeer(Beer beer) {
		 em.persist(beer);
		 em.flush();
		 em.close();
		 return beer;
	}
	
}

//@Override
//public Actor update(int id, Actor actor) {
//	EntityManager em = emf.createEntityManager();
//	em.getTransaction().begin();
//	
//	Actor newActor = em.find(Actor.class, id);
//	newActor.setFirstName("Joe");
//	newActor.setLastName("Exotic");
//	
//	em.flush();
//	em.getTransaction().commit();
//	em.close();
//	return newActor;
//}
//







