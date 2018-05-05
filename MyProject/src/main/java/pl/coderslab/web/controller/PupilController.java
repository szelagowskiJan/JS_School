package pl.coderslab.web.controller;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import pl.coderslab.dto.PupilDTO;
import pl.coderslab.entity.Pupil;

public class PupilController {

	@GetMapping(path = "/menu1")
	public String showRegistrationForm(final Model model) {

		final PupilDTO pupil = new PupilDTO();
		model.addAttribute("pupils", pupil);

		return "success";
	}

	@PostMapping(path = "/views/menu")
	public String registerPupil(final @ModelAttribute("pupil") PupilDTO pupil) {

		return "success";
	}

	@GetMapping(path = "/success")
	public String showRegistrationPupil(final Model model) {
		final PupilDTO person = new PupilDTO();
		model.addAttribute("person", person);

		return "success";
	}

	@PostMapping(path = "/success")
	public String registerPupil(final @ModelAttribute("pupil") Pupil pupil) {

		final String name = pupil.getName();
		final String email = pupil.getEmail();
		final String numberPhone = pupil.getNumberPhone();
		final String comment = pupil.getComment();

		if (name != null && !name.isEmpty() && email != null && !email.isEmpty() && numberPhone != null
				&& !numberPhone.isEmpty() && comment != null && !comment.isEmpty()) {

			/*
			 * final String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt(10));
			 * person.setPassword(hashedPassword);
			 */
			// PupilDao.add(pupil);
			return "views/success";

		}
		return "menu2";
	}

	@ModelAttribute("Level")
	public Collection<String> pupilsLevel() {
		return Arrays.asList("Podstawowy", "Gimnazjalny", "Licealny", "Techniczny", "Wyższy");
	}

}
