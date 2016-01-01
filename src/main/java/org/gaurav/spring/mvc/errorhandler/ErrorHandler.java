package org.gaurav.spring.mvc.errorhandler;

import org.hibernate.JDBCException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ErrorHandler {

	@ExceptionHandler(JDBCException.class)
	public String handleDataException(JDBCException ex)
	{
		return "error";
	}
}
