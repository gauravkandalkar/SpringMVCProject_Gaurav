package org.gaurav.spring.mvc.service;

import java.util.List;

public interface BaseService<T> {

	List<T> readAll();

	void add(T entity);

}