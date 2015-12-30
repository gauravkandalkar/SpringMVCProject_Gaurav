package org.gaurav.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String ShowHome(Model model) {
		model.addAttribute("name", "Gaurav");
		
		return "Home";
	}
}
