package com.mie.model;

import java.util.Date;

public class User {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the User object.
	 */

	private String username;
	private String password;

	// private String email;
	// private String firstName;
	// private String lastName;
	private String faculty;
	private String program;
	private int yearOfStudy;
	private Date dateCreated;
	private boolean valid;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	// public String getFirstName() {
	// 	return firstName;
	// }

	// public void setFirstName(String firstName) {
	// 	this.firstName = firstName;
	// }

	// public String getLastName() {
	// 	return lastName;
	// }

	// public void setLastName(String lastName) {
	// 	this.lastName = lastName;
	// }

	public String getFaculty() {
		return faculty;
	}
	public String getProgram() {
		return program;
	}
	public int yearOfStudy() {
		return yearOfStudy;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public void setProgram(String program) {
		this.program = program;
	}
	public void setYearOfStudy(int yearOfStudy) {
		this.yearOfStudy = yearOfStudy;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	// public String getEmail() {
	// 	return email;
	// }

	// public void setEmail(String email) {
	// 	this.email = email;
	// }

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}


	@Override
	public String toString() {
		return "Student [username=" + username + ", password=" + password + 
		", faculty=" + faculty + ", program=" + program + 
		", year of study=" + yearOfStudy + ", date created=" + dateCreated + "]";
	}
}