package org.gaurav.spring.mvc.controller;

import org.gaurav.spring.mvc.model.User;
import org.gaurav.spring.mvc.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@Autowired
	BaseService userService;
	
	@RequestMapping("/login")
	public String showLogin()
	{
		return "login";
	}
	
	@RequestMapping("/newaccount")
	public String showNewAccount(Model model)
	{
		model.addAttribute("User", new User());
		return "newaccount";
	}
	
	@RequestMapping("/createaccount")
	public String createNewAccount(User user,Model model)
	{
		userService.add(user);
		return "accountcreated";
	}
}
