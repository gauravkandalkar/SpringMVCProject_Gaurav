package org.gaurav.spring.mvc.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.gaurav.spring.mvc.model.Offers;
import org.gaurav.spring.mvc.model.OffersList;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("offerRepository")
public class OfferRepository implements BaseRepository {

	@PersistenceContext
	private EntityManager em;

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.gaurav.spring.mvc.repository.Repository#readAll()
	 */
	@Override
	public OffersList readAll() {
		Query query = em.createQuery("Select f from Offers f");

		OffersList offersList = new OffersList();
		offersList.setOffersList(query.getResultList());
		return offersList;
	}

	@Transactional
	@Override
	public void add(Offers offers) {
		 em.persist(offers);
		 em.flush();
	}

}
