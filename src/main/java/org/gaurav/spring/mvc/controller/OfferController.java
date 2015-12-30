package org.gaurav.spring.mvc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.gaurav.spring.mvc.model.OffersList;
import org.gaurav.spring.mvc.service.BaseService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OfferController {

	@Resource(name="offerService")
	private BaseService offerService;
	
	@RequestMapping("/offers")
	public String showCurrentOffers(HttpSession session)
	{
		OffersList offersList = offerService.readAll();
		session.setAttribute("offers", offersList.getOffersList());
		return "ShowOffers";
	}
	
	@RequestMapping("/addnewoffer")
	public String addNewOffer()
	{
		return "AddNewOffer";
	}
}
