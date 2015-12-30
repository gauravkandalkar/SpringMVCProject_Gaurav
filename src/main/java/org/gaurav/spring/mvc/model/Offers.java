package org.gaurav.spring.mvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.gaurav.spring.mvc.validator.ValidEmail;
import org.hibernate.validator.internal.constraintvalidators.hv.EmailValidator;

@Entity
public class Offers {
	@Id
	@GeneratedValue
	private String id;

	@Size(min = 5, max = 100, message = "Name must be between 5 and 100 charecters")
	private String name;
	
	//@NotNull(message="invalid email")
	//@Pattern(message="invalid email", regexp=org.gaurav.spring.mvc.util.EmailValidator.EMAIL_PATTERN)
	@ValidEmail
	private String email;
	
	@Size(min=10, max=500)
	private String text;

	public String getEmail() {
		return email;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getText() {
		return text;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Offers [id=" + id + ", name=" + name + ", email=" + email + ", text=" + text + "]";
	}

}
