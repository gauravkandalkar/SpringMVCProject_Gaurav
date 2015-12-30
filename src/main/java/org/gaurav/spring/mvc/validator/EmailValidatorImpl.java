package org.gaurav.spring.mvc.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.validator.routines.EmailValidator;

public class EmailValidatorImpl implements ConstraintValidator<ValidEmail, String> {
	// public static final String EMAIL_PATTERN =
	// "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
	// + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	int min;

	@Override
	public void initialize(ValidEmail constraintAnnotation) {
		min = constraintAnnotation.min();
	}

	@Override
	public boolean isValid(String email, ConstraintValidatorContext context) {
		if (email.length() < min) {
			return false;
		}
		if(!EmailValidator.getInstance().isValid(email))
		{
			return false;
		}
		
			return true;
	}
}
