package com.ecomm;


import java.io.Serializable;

import com.googlecode.objectify.annotation.*;

@Entity

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2596920418590502093L;
	String name;
	String password;
	String number;
	@Id
	String email;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
	

}
