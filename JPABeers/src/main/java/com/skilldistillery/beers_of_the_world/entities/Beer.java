package com.skilldistillery.beers_of_the_world.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Beer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String description;
	public String getBrewery() {
		return brewery;
	}

	public void setBrewery(String brewery) {
		this.brewery = brewery;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	private String brewery;
	private String style;
	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public double getAbv() {
		return abv;
	}

	public void setAbv(double abv) {
		this.abv = abv;
	}

	public int getSrm() {
		return srm;
	}

	public void setSrm(int srm) {
		this.srm = srm;
	}

	public double rating;
	public double abv;
	public int srm;
	
	
	
	

	private String name;

	public Beer() {}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Beer [id=");
		builder.append(id);
		builder.append(", description=");
		builder.append(description);
		builder.append(", brewery=");
		builder.append(brewery);
		builder.append(", style=");
		builder.append(style);
		builder.append(", rating=");
		builder.append(rating);
		builder.append(", abv=");
		builder.append(abv);
		builder.append(", srm=");
		builder.append(srm);
		builder.append(", name=");
		builder.append(name);
		builder.append("]");
		return builder.toString();
	}





	
}
