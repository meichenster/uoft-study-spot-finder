package com.mie.model;

import java.util.ArrayList;
import java.util.Date;

public class User {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the User object.
	 */

	private String username;
	private String password;
	private String faculty;
	private String program;
	private int yearOfStudy;
	private Date dateCreated;
	private boolean valid;
	private ArrayList<StudySpot> savedStudySpots;

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

	public String getFaculty() {
		return faculty;
	}
	
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public int getYearOfStudy() {
		return yearOfStudy;
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

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}

	public ArrayList<StudySpot> getSavedStudySpots() {
		return savedStudySpots;
	}

	public void setSavedStudySpots(ArrayList<StudySpot> savedStudySpots) {
		this.savedStudySpots = savedStudySpots;
	}
	
	// methods
	public StudySpot getSavedStudySpot(int index) {
		return savedStudySpots.get(index);
	}

	public void addSavedStudySpot(StudySpot savedSpot) {
		savedStudySpots.add(savedSpot);
	}

	public void removeSavedStudySpot(StudySpot savedSpot) {
		savedStudySpots.remove(savedStudySpots.indexOf(savedSpot));
	}

	@Override
	public String toString() {
		return "Student [username=" + username + ", password=" + password + 
		", faculty=" + faculty + ", program=" + program + 
		", year of study=" + yearOfStudy + ", date created=" + dateCreated + "]";
	}
}