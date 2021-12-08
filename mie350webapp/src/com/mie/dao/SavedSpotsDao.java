package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.mie.util.DbUtil;

import com.mie.model.*;
import com.mie.dao.*;

public class SavedSpotsDao {
	/**
	 * This class handles all of the StudySpot-related methods
	 * (add/update/delete/get).
	 */

	private Connection connection;

	public SavedSpotsDao() {
		/**
		 * Get the database connection.
		 */
		connection = DbUtil.getConnection();
	}

	public void addSavedSpot(String username, String location, int locationID, String rating) {
		/**
		 * This method adds a new StudySpot to the database.
		 */
		try {
			System.out.println("Adding saved spot...");
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into Saved_Spots_DB(username, location, locationID, rating) values (?, ?, ?, ?)");
			
			// Parameters start with 1
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, location);
			preparedStatement.setInt(3, locationID);
			preparedStatement.setString(4, rating);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		// added to the corresponding user

	}

	public void deleteSavedSpot(String username, int locationID) {
		/**
		 * This method deletes a study spot from the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from Saved_Spots_DB where username=? and locationID=?");
			// Parameters start with 1
			preparedStatement.setString(1, username);
			preparedStatement.setInt(2, locationID);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateSavedSpot(String username, String location, int locationID, String rating) {
		/**
		 * This method updates a saved StudySpot's information into the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update Saved_Spots_DB set username=?, location=?, locationID=?, rating=?"
							+ " where username=? and locationID=?");
			// Parameters start with 1
			preparedStatement.setString(1, username);
			preparedStatement.setInt(2, locationID);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// public List<StudySpot> getAllSavedSpots(User user) {
	// 	/**
	// 	 * This method returns the list of all saved study spots in the form of a List
	// 	 * object.
	// 	 */
	// 	return user.getSavedStudySpots();
	// }

	public ArrayList<StudySpot> getAllSavedSpots(String username) {
		/**
		 * This method returns the list of all saved study spots in the form of a List
		 * object.
		 */
		ArrayList<StudySpot> SavedSpots = new ArrayList<StudySpot>();
		try {
			String searchQuery = "select * from Saved_Spots_DB INNER JOIN Study_Spots_DB ON Saved_Spots_DB.locationID = Study_Spots_DB.locationID where Saved_Spots_DB.username= '"
				+ username + "'";

			Statement statement = connection.createStatement();
			// System.out.println("getting StudySpots from table");
			ResultSet rs = statement.executeQuery(searchQuery);
			
			while (rs.next()) {
				StudySpot studyspot = new StudySpot();
				String un = rs.getString("username");
				studyspot.setLocation(rs.getString("Saved_Spots_DB.location"));
				studyspot.setLocationID(rs.getInt("Saved_Spots_DB.locationID"));
				studyspot.setRating(rs.getInt("Saved_Spots_DB.rating"));
				studyspot.setLocationID(rs.getInt("Study_Spots_DB.locationID"));

				studyspot.setName(rs.getString("spotName"));
				studyspot.setArea(rs.getString("area"));
				studyspot.setLink(rs.getString("mapLink"));
				studyspot.setCapacity(rs.getString("capacity"));
				studyspot.setOpeningTime(rs.getString("oTime"));
				studyspot.setClosingTime(rs.getString("cTime"));
				studyspot.setMainMajor(rs.getString("discipline"));
				studyspot.setHasComputers(rs.getBoolean("computers"));
				studyspot.setHasFood(rs.getBoolean("foodSpots"));
				studyspot.setHasGroupTables(rs.getBoolean("groupTables"));
				studyspot.setIndoors(rs.getBoolean("indoors"));
				studyspot.setRating(rs.getDouble("Study_Spots_DB.rating"));
				SavedSpots.add(studyspot);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return SavedSpots;
	}


	public List<StudySpot> getStudySpotByKeyword(String keyword) {
		/**
		 * This method retrieves a list of StudySpots that matches the keyword
		 * entered by the user.
		 */
		List<StudySpot> StudySpots = new ArrayList<StudySpot>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Study_Spots_DB where spotName LIKE ? OR area LIKE ? OR location LIKE ?");

			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				StudySpot studyspot = new StudySpot();
				studyspot.setLocationID(rs.getInt("locationID"));
				studyspot.setName(rs.getString("spotName"));
				studyspot.setArea(rs.getString("area"));
				studyspot.setLocation(rs.getString("location"));
				studyspot.setLink(rs.getString("mapLink"));
				studyspot.setCapacity(rs.getString("capacity"));
				studyspot.setOpeningTime(rs.getString("oTime"));
				studyspot.setClosingTime(rs.getString("cTime"));
				studyspot.setMainMajor(rs.getString("discipline"));
				studyspot.setHasComputers(rs.getBoolean("computers"));
				studyspot.setHasFood(rs.getBoolean("foodSpots"));
				studyspot.setHasGroupTables(rs.getBoolean("groupTables"));
				studyspot.setIndoors(rs.getBoolean("indoors"));
				studyspot.setRating(rs.getDouble("rating"));

				StudySpots.add(studyspot);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return StudySpots;
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
}
