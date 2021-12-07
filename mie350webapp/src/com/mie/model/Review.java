package com.mie.model;

public class Review {
    	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Review object.
	 */

    private int reviewID;
    private int locationID;
    private String username;
   
    private String location;
    private double rating;
    private boolean recommended;
    private String review;

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public int getLocationID() {
        return locationID;
    }

    public void setLocationID(int locationID) {
        this.locationID = locationID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public boolean getRecommended() {
        return recommended;
    }

    public void setRecommended(boolean recommended) {
        this.recommended = recommended;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }


    @Override
    public String toString() {
        return "Review [isRecommended=" + recommended + ", location=" + location + ", locationID=" + locationID
                + ", rating=" + rating + ", review=" + review + ", reviewID=" + reviewID + ", username=" + username
                + "]";
    }
    
}
