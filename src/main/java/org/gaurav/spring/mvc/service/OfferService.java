package org.gaurav.spring.mvc.service;

import javax.annotation.Resource;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.model.OffersList;
import org.gaurav.spring.mvc.repository.BaseRepository;
import org.springframework.stereotype.Service;

@Service("offerService")
public class OfferService implements BaseService {

	@Resource(name="offerRepository")
	private BaseRepository offerRepository;
	
	/* (non-Javadoc)
	 * @see org.gaurav.spring.mvc.service.BaseService#readAll()
	 */
	@Override
	public OffersList readAll()
	{
		return offerRepository.readAll();
	}

	@Override
	public void add(Offers offers) {
		offerRepository.add(offers);
	}
}
