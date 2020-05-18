package com.skilldistillery.beers_of_the_world.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.beers_of_the_world.data.BeersOfTheWorldDAO;
import com.skilldistillery.beers_of_the_world.entities.Beer;

@Controller
public class BeerController {
	@Autowired
	private BeersOfTheWorldDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goHome(Model model) {

		return "index";
	}
	
	@RequestMapping(path="getBeer.do")
	public String getBeer(@RequestParam("bid")int id, Model model) {
		Beer beer = dao.findById(id);
		model.addAttribute("beer", beer);
		if(beer == null) {
			return "error";
		} else {
			return "info";
		}
	}
	
	@RequestMapping(path="deleteBeer.do")
	public String deleteBeer(@RequestParam("bid") int id, Model model) {
		boolean delete = dao.deleteBeer(id);
		if(delete) {
			return "deletesuccess";
		} else {
			return "deleteerror";
		}
	}
	
	@RequestMapping(path="editBeer.do", method = RequestMethod.GET)
	public String editBeer(@RequestParam("bid") int id, Model model) {
		Beer beer = dao.findById(id);
		model.addAttribute("beer", beer);
		return "editbeer";
	}
	
	@RequestMapping(path="editBeer.do", method = RequestMethod.POST)
	public String submitEdit(@RequestParam("bid") int id, Beer beer, Model model) {
		dao.updateBeer(id, beer);
		return "success";
	}
	
	@RequestMapping(path="createBeer.do", method = RequestMethod.POST)
	public String createBeer(Beer beer, Model model) {
		Beer newBeer = dao.createBeer(beer);
		model.addAttribute("beer", newBeer);
		return "success";
	}
	
	@RequestMapping(path="createBeer.do", method = RequestMethod.GET)
	public String gotToCreateBeer(Beer beer, Model model) {
		return "addbeer";
	}
	
	@RequestMapping(path="listBeers.do")
	public String listBeers(Model model){
		List<Beer> beers = dao.getBeers();
		model.addAttribute("beers", beers);
		return "beerlist";
	}
	
	
	
	
	
	
	
	
}
