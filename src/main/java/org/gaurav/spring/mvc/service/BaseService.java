package org.gaurav.spring.mvc.service;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.model.OffersList;

public interface BaseService {

	OffersList readAll();

	void add(Offers offers);

}