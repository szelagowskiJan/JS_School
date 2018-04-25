package pl.coderslab.controller;

import org.springframework.ui.Model;



public class LevelController {

	@GetMapping( "/table")
	public String showAllLevels(final Model model) {

		return "level/level";

	}
	
}
