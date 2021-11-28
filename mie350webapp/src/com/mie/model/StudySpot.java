package com.mie.model;

import java.util.ArrayList;
import java.util.Date;

public class StudySpot {
    	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the StudySpot object.
	 */

    private int locationID;
    private String name;
    private String area;

    private String location;
    private String link;
    private int capacity;
    private Date openingTime;
    private Date closingTime;

    private String mainMajor;
    private boolean hasComputers;
    private boolean hasFood;
    private boolean hasGroupTables;
    private boolean isIndoors;

    private double rating; // total rating
    private ArrayList<Integer> ratings; // list of individual user ratings

    // getters and setters
    public int getLocationID() {
        return locationID;
    }

    public void setLocationID(int locationID) {
        this.locationID = locationID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public Date getOpeningTime() {
        return openingTime;
    }

    public void setOpeningTime(Date openingTime) {
        this.openingTime = openingTime;
    }

    public Date getClosingTime() {
        return closingTime;
    }

    public void setClosingTime(Date closingTime) {
        this.closingTime = closingTime;
    }

    public String getMainMajor() {
        return mainMajor;
    }

    public void setMainMajor(String mainMajor) {
        this.mainMajor = mainMajor;
    }

    public boolean isHasComputers() {
        return hasComputers;
    }

    public void setHasComputers(boolean hasComputers) {
        this.hasComputers = hasComputers;
    }

    public boolean isHasFood() {
        return hasFood;
    }

    public void setHasFood(boolean hasFood) {
        this.hasFood = hasFood;
    }

    public boolean isHasGroupTables() {
        return hasGroupTables;
    }

    public void setHasGroupTables(boolean hasGroupTables) {
        this.hasGroupTables = hasGroupTables;
    }

    public boolean isIndoors() {
        return isIndoors;
    }

    public void setIndoors(boolean isIndoors) {
        this.isIndoors = isIndoors;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    // methods
    public void updateRating(int newRating) {
        ratings.add(newRating);
        // round to 2 d.p.
        this.rating = Math.round(getRatingSum()/ratings.size() * 100.0) / 100.0;
    }

    public double getRatingSum() {
        double sum = 0;
        for(int i = 0; i < ratings.size(); i++)
            sum += ratings.get(i);
        return sum;
    }

    @Override
	public String toString() {
		return "Study Spot [name=" + name + ", area=" + area + 
		", location=" + location + ", link=" + link + 
		", capacity=" + capacity + ", opening time=" + openingTime + 
        ", closing time=" + closingTime + ", main major=" + mainMajor +
        ", computers=" + hasComputers + ", food=" + hasFood + 
        ", group tables=" + hasGroupTables + ", isIndoors=" + isIndoors +
        ",rating=" + rating + "]";
	}


    
}
