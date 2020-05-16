package com.skilldistillery.beers_of_the_world.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.beers_of_the_world.data.BeersOfTheWorldDAO;
import com.skilldistillery.beers_of_the_world.entities.Beer;

@Controller
public class BeerController {
	@Autowired
	private BeersOfTheWorldDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {
		List<Beer> beers = dao.getBeers();
		model.addAttribute("beers", beers);
		return "index";
	}
	
	@RequestMapping(path= {"getBeer.do"})
	public String findBeer(@RequestParam("id")int id, Model model) {
		Beer beer = dao.findById(id);
		model.addAttribute("beer", beer);
		return "beerinfo";
	}
}
