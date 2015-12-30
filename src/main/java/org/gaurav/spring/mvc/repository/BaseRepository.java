package org.gaurav.spring.mvc.repository;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.model.OffersList;

public interface BaseRepository {

	OffersList readAll();

	void add(Offers offers);

}