
package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.RestaurantEntity;
import com.repository.RestaurantRepository;

@Controller
public class RestaurantController {

	@Autowired
	RestaurantRepository restaurantRepository;

	@GetMapping("newrestaurant")
	public String newRestaurant() {

		return "NewRestaurant";
	}

	@PostMapping("saverestaurant")
	public String saveRestaurant(@Validated RestaurantEntity restaurantEntity  , BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("result", result);
			
			return "NewRestaurant";
			 
			 
		}else
		
		{
			restaurantRepository.save(restaurantEntity);// insert
			return "redirect:/listrestaurant";
		}

	}

	@GetMapping("/listrestaurants")
	public String listRestaurants(Model model) {
		List<RestaurantEntity> restaurants = restaurantRepository.findAll();
		model.addAttribute("restaurants", restaurants);

		return "ListRestaurant";
	}

	// restaurantRepository.deleteById(id);
	
	
	@GetMapping("/deleterestaurant")
	public String deleterestaurants(@RequestParam("restaurantId") Integer restaurantId) {
		
		restaurantRepository.deleteById(restaurantId);
		return "redirect:/listrestaurants";

	}
	
	@GetMapping("/editrestaurant")
	
	public String editrstaurants(@RequestParam("restaurantId") Integer restaurantId, Model model) {
	Optional<RestaurantEntity> op=  restaurantRepository.findById(restaurantId);
	
		if(op.isEmpty()) {
			return "Error";
		}else {
			model.addAttribute("restaurant" , op.get());
			return "EditRestaurant";
		}
	}
	
	
	@PostMapping("/updaterestaurant")
	public String updateRestaurant(RestaurantEntity restaurantEntity) {
		restaurantRepository.save(restaurantEntity);
		return "redirect:/listrestaurants";
	}
}
