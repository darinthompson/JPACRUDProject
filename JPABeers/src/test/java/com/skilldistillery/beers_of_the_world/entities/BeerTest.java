package com.skilldistillery.beers_of_the_world.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class BeerTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Beer beer;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BeersPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		beer = em.find(Beer.class, 2);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		beer = null;
	}

	@Test
	@DisplayName("Test Beer mappings work")
	void test() {
		assertNotNull(beer);
		assertEquals("Mountain Brew", beer.getName());
		assertEquals("Foot Hill brewery", beer.getBrewery());
		assertEquals("Dewiest Mountain Brew", beer.getDescription());
		assertEquals(10, beer.getRating());
		assertEquals(5.6, beer.getAbv());
		assertEquals(56, beer.getSrm());
		assertEquals("ipa", beer.getStyle());
	}

}
