package org.gaurav.spring.mvc.repository;

import java.util.List;

public interface BaseRepository<T> {

	List<T> readAll() ;

	void add(T entiry) ;

}