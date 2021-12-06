package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.model.Review;
import com.mie.util.DbUtil;

public class ReviewDao {
	/**
	 * This class handles all of the StudySpot-related methods
	 * (add/update/delete/get).
	 */

	private static Connection connection;
	static Connection currentCon = DbUtil.getConnection();
	static ResultSet rs = null;

	public ReviewDao() {
		/**
		 * Get the database connection.
		 */
		connection = DbUtil.getConnection();
	}

	public void addReview(Review review) {
		/**
		 * This method adds a new StudySpot to the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into Reviews_DB(Review_ID, Location_ID, Username, Location, Rating_(out of 5), Recommend?_(Yes/No), Review) values (?, ?, ?, ?, ?, ?, ?)");
			
					// Parameters start with 1
			preparedStatement.setInt(1, review.getReviewID());
			preparedStatement.setInt(2, review.getLocationID());
			preparedStatement.setString(3, review.getUsername());
			preparedStatement.setString(4, review.getLocation());
			preparedStatement.setDouble(5, review.getRating());
			preparedStatement.setBoolean(6, review.isRecommended());
			preparedStatement.setString(7, review.getLocation());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteReview(int reviewID) {
		/**
		 * This method deletes a study spot from the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from Study_Spots_DB where Review_ID=?");
			// Parameters start with 1
			preparedStatement.setInt(1, reviewID);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateReview(Review review) {
		/**
		 * This method updates a StudySpot's information into the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update Reviews_DB set Review_ID=?, Location_ID=?, Username=?, Location=?, Rating_(out of 5)=?, Recommend?_(Yes/No)=?, Review=?" 
					+ " where Review_ID=?");
			// Parameters start with 1
			preparedStatement.setInt(1, review.getReviewID());
			preparedStatement.setInt(2, review.getLocationID());
			preparedStatement.setString(3, review.getUsername());
			preparedStatement.setString(4, review.getLocation());
			preparedStatement.setDouble(5, review.getRating());
			preparedStatement.setBoolean(6, review.isRecommended());
			preparedStatement.setString(7, review.getReview());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Review> getAllReviews() {
		/**
		 * This method returns the list of all reviews in the form of a List
		 * object.
		 */
		List<Review> Reviews = new ArrayList<Review>();
		try {
			Statement statement = connection.createStatement();
			// System.out.println("getting Reviews from table");
			ResultSet rs = statement.executeQuery("select * from Reviews_DB");
			while (rs.next()) {
				Review review = new Review();
				review.setReviewID(rs.getInt("Review ID"));
				review.setLocationID(rs.getInt("Location ID"));
				review.setUsername(rs.getString("Username"));
				review.setLocation(rs.getString("Location"));
				review.setRating(rs.getDouble("Rating (out of 5)"));
				review.setRecommended(rs.getBoolean("Recommend? (Yes/No)"));
				review.setReview(rs.getString("Review"));
				Reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return Reviews;
	}
	// public static Review getReviews(Review review, int rows) {
	// 	ArrayList<Review> locations = new ArrayList<Review>();
	// 	try {
	// 		String searchQuery ="SELECT * from Reviews_DB WHERE Review ID ='"
	// 		+ rows + "'";
	// 		Statement stmt = null;
	// 		currentCon = DbUtil.getConnection();
	// 		stmt = currentCon.createStatement();
	// 		rs = stmt.executeQuery(searchQuery);
	// 		while(rs.next()){
	// 		//	Review review = new Review();
	// 			review.setReviewID(rs.getInt("Review ID"));
	// 			review.setLocationID(rs.getInt("Location ID"));
	// 			review.setUsername(rs.getString("Username"));
	// 			review.setLocation(rs.getString("Location"));
	// 			review.setRating(rs.getDouble("Rating"));
	// 			// review.setRecommended(rs.getBoolean("Recommend?"));
	// 			locations.add(review);
	// 		}
	// 		// System.out.print(locations);
	// 	} catch (SQLException e) {
	// 		e.printStackTrace();
	// 	}
	// 	return review;
	// }
	public static ArrayList <Review> getReviews(Review review) {
		ArrayList<Review> locations = new ArrayList<Review>();
		try {
			String searchQuery ="SELECT * from Reviews_DB";
			Statement stmt = null;
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			while(rs.next()){
			//	Review review = new Review();
				review.setReviewID(rs.getInt("Review ID"));
				review.setLocationID(rs.getInt("Location ID"));
				review.setUsername(rs.getString("Username"));
				review.setLocation(rs.getString("Location"));
				review.setRating(rs.getDouble("Rating"));
				// review.setRecommended(rs.getBoolean("Recommend?"));
				locations.add(review);
			}
			// System.out.print(locations);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return locations;
	}
	// public static int getRows() {
	// 	int rows = 0;
	// 	try {
	// 		String searchQuery ="SELECT COUNT * from Reviews_DB";
	// 		Statement stmt = null;
	// 		currentCon = DbUtil.getConnection();
	// 		stmt = currentCon.createStatement();
	// 		rs = stmt.executeQuery(searchQuery);
	// 		rows =  ((Number) rs.getObject(1)).intValue();
	// 	} catch (SQLException e) {
	// 		e.printStackTrace();
	// 	}
	// 	return rows;
	//}
	public static Review setReview(Review review) {
		int reviewid = review.getReviewID();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * from from Reviews_DB WHERE Review ID= '"
			+ reviewid + "'");
			while (rs.next()) {
				review.setReviewID(rs.getInt("Review ID"));
				review.setLocationID(rs.getInt("Location ID"));
				review.setUsername(rs.getString("Username"));
				review.setLocation(rs.getString("Location"));
				review.setRating(rs.getDouble("Rating (out of 5)"));
				review.setRecommended(rs.getBoolean("Recommend? (Yes/No)"));
				review.setReview(rs.getString("Review"));
				//Reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return review;
	}
	public Review getReviewById(int reviewID) {
		/**
		 * This method retrieves a StudySpot by their reviewID number.
		 * 
		 * Currently not used in the sample web app, but code is left here for
		 * your review.
		 */
		Review review = new Review();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Study_Spots_DB where Review_ID=?");
			preparedStatement.setInt(1, reviewID);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {;
				review.setReviewID(rs.getInt("Review ID"));
				review.setLocationID(rs.getInt("Location ID"));
				review.setUsername(rs.getString("Username"));
				review.setLocation(rs.getString("Location"));
				review.setRating(rs.getDouble("Rating (out of 5)"));
				review.setRecommended(rs.getBoolean("Recommend? (Yes/No)"));
				review.setReview(rs.getString("Review"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return review;
	}
}
