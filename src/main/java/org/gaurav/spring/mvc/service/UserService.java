package org.gaurav.spring.mvc.service;

import java.util.List;

import org.gaurav.spring.mvc.model.User;
import org.gaurav.spring.mvc.repository.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
public class UserService implements BaseService<User> {

	@Autowired
	BaseRepository userRepository;
	
	@Override
	public List<User> readAll() {
		return null;
	}

	@Transactional
	@Override
	public void add(User user) {
		userRepository.add(user);	
	}

}
