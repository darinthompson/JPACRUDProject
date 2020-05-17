package com.skilldistillery.beers_of_the_world.data;

import java.util.List;

import com.skilldistillery.beers_of_the_world.entities.Beer;

public interface BeersOfTheWorldDAO {
	public Beer findById(int id);
	public List<Beer> getBeers();
	public boolean deleteBeer(int id);
	public Beer updateBeer(int id, Beer beer);
}
