package org.gaurav.spring.mvc.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.service.BaseService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OfferController {

	@Resource(name = "offerService")
	private BaseService offerService;

	@RequestMapping("/offers")
	public String showCurrentOffers(HttpSession session) {
		List<Offers> offersList = offerService.readAll();
		session.setAttribute("offers", offersList);
		//throw new JDBCException("test", null);
		return "ShowOffers";
	}

	@RequestMapping("/addnewoffer")
	public String addNewOffer(Model model) {
		model.addAttribute("offers", new Offers());
		return "addnewoffer";
	}
	
	

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String docreate(Model model, @Valid Offers offers, BindingResult bindResults) 
	{
		if (bindResults.hasErrors()) {
			List<ObjectError> errors = bindResults.getAllErrors();
			System.out.println("validation failed, has error");
			for (ObjectError error : errors) {
				System.out.println(error.getDefaultMessage());
			}

			return "addnewoffer";
		}
		offerService.add(offers);
		return "OfferCreated";
	}
}