package pl.coderslab.web.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


public class LevelController {

	@GetMapping( "/table")
	public String showAllLevels(final Model model) {

		return "level/level";

	}
	
}
