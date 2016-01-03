package org.gaurav.spring.mvc.service;

import java.util.List;

import javax.annotation.Resource;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.model.OffersList;
import org.gaurav.spring.mvc.repository.BaseRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("offerService")
public class OfferService implements BaseService <Offers>{

	@Resource(name="offerRepository")
	private BaseRepository offerRepository;
	
	/* (non-Javadoc)
	 * @see org.gaurav.spring.mvc.service.BaseService#readAll()
	 */
	@Override
	public List<Offers> readAll()
	{
		return offerRepository.readAll();
	}

	@Transactional
	@Override
	public void add(Offers offers) {
		offerRepository.add(offers);
	}
}
