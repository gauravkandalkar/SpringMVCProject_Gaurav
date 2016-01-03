package org.gaurav.spring.mvc.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.gaurav.spring.mvc.model.User;
import org.gaurav.spring.mvc.model.UserRole;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userRepository")
public class UserRepository implements BaseRepository<User> {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public List<User> readAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	@Override
	public void add(User user) {

		UserRole userrole = new UserRole();
		userrole.setUser(user);
		userrole.setRole("ROLE_USER");
		user.setEnabled((byte) 1);
		add(user,userrole);
	}

	@Transactional
	public void add(User user,UserRole userrole) {

		em.persist(user);
		em.persist(userrole);
		
	}

}
