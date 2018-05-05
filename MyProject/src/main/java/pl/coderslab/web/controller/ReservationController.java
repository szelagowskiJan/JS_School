package pl.coderslab.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pl.coderslab.entity.Pupil;
import pl.coderslab.entity.Reservation;
import pl.coderslab.mail.SendEmail;
import pl.coderslab.mail.SendEmailCourse;
import pl.coderslab.repository.PupilRepository;
import pl.coderslab.repository.ReservationRepository;

@Controller
public class ReservationController {

	@Autowired
	private ReservationRepository reservationRepository;
	@Autowired
	private PupilRepository pupilRepository;

	@GetMapping("menu1")
	public String showAllLevels(final Model model) {
		// throw new RuntimeException("BLA BLA !!!");
		Pupil pupil = new Pupil();
		List<Reservation> reservations = reservationRepository.findAll();
		model.addAttribute("pupil", pupil);
		model.addAttribute("menu", reservations);
		return "/menu";
	}

	@PostMapping("login")
	public String Login(final Model model, @RequestParam String login, @RequestParam String password) {

		if (login.equals("aaaaaaaa") && password.equals("aaaaaaaa")) {

			return "/showAll";
		} else
			return "/admin";
	}

	@GetMapping("showAll")
	public String showAllPupils(final Model model) {
		List<Pupil> pupils = pupilRepository.findAll();
		model.addAttribute("pupils", pupils);
		return "/payment";
	}

	@PostMapping("course")
	public String processAddReservationForm(final Pupil pupil, final BindingResult bresult) {
		// List errors = bresult.getFieldErrors();
		// if (bresult.hasErrors()) {
		//
		// return "/menu1";
		//
		// }
		System.out.println("Pupil to save: " + pupil);
		pupilRepository.save(pupil);
		return "redirect:list";

	}

	@PostMapping("success")
	public String showPupil(final Model model, @RequestParam String email, @RequestParam String name,
			@RequestParam String numberPhone, @RequestParam String comment, @RequestParam String mail,
			@RequestParam String level) throws MessagingException {

		List<Reservation> reservations = reservationRepository.findAll();
		model.addAttribute("menu", reservations);
		model.addAttribute("email", email);
		model.addAttribute("level", level);
		model.addAttribute("name", name);
		model.addAttribute("numberPhone", numberPhone);
		model.addAttribute("comment", comment);
		model.addAttribute("mail", mail);

		SendEmail se = new SendEmail();

		se.sendToMy(numberPhone, name, level);
		se.send(name, email, level);

		return "/success";

	}

	@PostMapping("successCourse")
	public String showMaturPupil(final Model model, @RequestParam String email, @RequestParam String name,
			@RequestParam String numberPhone, @RequestParam String comment, @RequestParam String mail)
			throws MessagingException {
		// throw new RuntimeException("BLA BLA !!!");
		List<Reservation> reservations = reservationRepository.findAll();
		model.addAttribute("menu", reservations);
		model.addAttribute("email", email);
		model.addAttribute("name", name);
		model.addAttribute("numberPhone", numberPhone);
		model.addAttribute("comment", comment);
		model.addAttribute("mail", mail);

		SendEmailCourse se = new SendEmailCourse();

		se.sendToMy(numberPhone, name);
		se.send(email);

		Pupil pupil = new Pupil(null, name, numberPhone, email, comment, new ArrayList<Reservation>());
		processAddReservationForm(pupil, null);
		return "/successCourse";

	}

	@PostMapping("menu1")
	public String processAddReservationForm(final @Valid Reservation reservation, final BindingResult bresult) {
		if (bresult.hasErrors()) {
			return "/menu2";
		}
		// bookDao.add(book);
		System.out.println();
		reservationRepository.save(reservation);
		return "redirect:list";
	}

	@GetMapping("course")
	public String showCourse(final Model model) {
	
		return "/course";
	}
	@GetMapping("login")
	public String showLogin(final Model model) {

		return "/login";
	}
	
	@RequestMapping(value = "/login**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Hello Admin");
		model.addObject("message", "This is protected page!");
		model.setViewName("admin");

		return model;

	}
	
	
}
