package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.mie.model.StudySpot;
import com.mie.util.DbUtil;

public class StudySpotDao {
	/**
	 * This class handles all of the StudySpot-related methods
	 * (add/update/delete/get).
	 */

	private Connection connection;

	public StudySpotDao() {
		/**
		 * Get the database connection.
		 */
		connection = DbUtil.getConnection();
	}

	public void addStudySpot(StudySpot studyspot) {
		/**
		 * This method adds a new StudySpot to the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into Study Spots DB(LocationID, Name, Area, Location, Google map link, Capacity, Opening time, Closing time, Main discipline/major there, Does it Have computers, Does it have food spots (Yes/No), Does it have group tables? (Yes/No), Indoors or Outdoors, Rating (1-5) [update]) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
					// Parameters start with 1
			preparedStatement.setInt(1, studyspot.getLocationID());
			preparedStatement.setString(2, studyspot.getName());
			preparedStatement.setString(3, studyspot.getArea());
			preparedStatement.setString(4, studyspot.getLocation());
			preparedStatement.setString(5, studyspot.getLink());
			preparedStatement.setInt(6, studyspot.getCapacity());
			preparedStatement.setDate(7, new java.sql.Date(studyspot.getOpeningTime().getTime()));
			preparedStatement.setDate(8, new java.sql.Date(studyspot.getClosingTime().getTime()));
			preparedStatement.setString(9, studyspot.getMainMajor());
			preparedStatement.setBoolean(10, studyspot.isHasComputers());
			preparedStatement.setBoolean(11, studyspot.isHasFood());
			preparedStatement.setBoolean(12, studyspot.isHasGroupTables());
			preparedStatement.setBoolean(13, studyspot.isIndoors());
			preparedStatement.setDouble(14, studyspot.getRating());

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteStudySpot(int studySpotId) {
		/**
		 * This method deletes a study spot from the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from Study Spots DB where Location ID=?");
			// Parameters start with 1
			preparedStatement.setInt(1, studySpotId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateStudySpot(StudySpot studyspot) {
		/**
		 * This method updates a StudySpot's information into the database.
		 */
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update Study Spots DB set firstname=?, lastname=?, dob=?, email=?"
							+ " where locationID=?");
			// Parameters start with 1
			preparedStatement.setInt(1, studyspot.getLocationID());
			preparedStatement.setString(2, studyspot.getName());
			preparedStatement.setString(3, studyspot.getArea());
			preparedStatement.setString(4, studyspot.getLocation());
			preparedStatement.setString(5, studyspot.getLink());
			preparedStatement.setInt(6, studyspot.getCapacity());
			preparedStatement.setDate(7, new java.sql.Date(studyspot.getOpeningTime().getTime()));
			preparedStatement.setDate(8, new java.sql.Date(studyspot.getClosingTime().getTime()));
			preparedStatement.setString(9, studyspot.getMainMajor());
			preparedStatement.setBoolean(10, studyspot.isHasComputers());
			preparedStatement.setBoolean(11, studyspot.isHasFood());
			preparedStatement.setBoolean(12, studyspot.isHasGroupTables());
			preparedStatement.setBoolean(13, studyspot.isIndoors());
			preparedStatement.setDouble(14, studyspot.getRating());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<StudySpot> getAllStudySpots() {
		/**
		 * This method returns the list of all study spots in the form of a List
		 * object.
		 */
		List<StudySpot> StudySpots = new ArrayList<StudySpot>();
		try {
			Statement statement = connection.createStatement();
			// System.out.println("getting StudySpots from table");
			ResultSet rs = statement.executeQuery("select * from Study Spots DB");
			while (rs.next()) {
				StudySpot studyspot = new StudySpot();
				studyspot.setLocationID(rs.getInt("Location ID"));
				studyspot.setName(rs.getString("Name"));
				studyspot.setArea(rs.getString("Area"));
				studyspot.setLocation(rs.getString("Location"));
				studyspot.setLink(rs.getString("Google map link"));
				studyspot.setCapacity(rs.getInt("Capacity"));
				studyspot.setOpeningTime(rs.getDate("Opening time"));
				studyspot.setClosingTime(rs.getDate("Closing time"));
				studyspot.setMainMajor(rs.getString("Main discipline/major there"));
				studyspot.setHasComputers(rs.getBoolean("Does it Have computers"));
				studyspot.setHasFood(rs.getBoolean("Does it have food spots (Yes/No)"));
				studyspot.setHasGroupTables(rs.getBoolean("Does it have group tables? (Yes/No)"));
				studyspot.setIndoors(rs.getBoolean("Indoors or Outdoors"));
				studyspot.setRating(rs.getDouble("Rating (1-5) [update]"));
				StudySpots.add(studyspot);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return StudySpots;
	}

	public StudySpot getStudySpotById(int locationID) {
		/**
		 * This method retrieves a StudySpot by their StudySpotID number.
		 * 
		 * Currently not used in the sample web app, but code is left here for
		 * your review.
		 */
		StudySpot studyspot = new StudySpot();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Study Spots DB where locationID?");
			preparedStatement.setInt(1, locationID);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				studyspot.setLocationID(rs.getInt("Location ID"));
				studyspot.setName(rs.getString("Name"));
				studyspot.setArea(rs.getString("Area"));
				studyspot.setLocation(rs.getString("Location"));
				studyspot.setLink(rs.getString("Google map link"));
				studyspot.setCapacity(rs.getInt("Capacity"));
				studyspot.setOpeningTime(rs.getDate("Opening time"));
				studyspot.setClosingTime(rs.getDate("Closing time"));
				studyspot.setMainMajor(rs.getString("Main discipline/major there"));
				studyspot.setHasComputers(rs.getBoolean("Does it Have computers"));
				studyspot.setHasFood(rs.getBoolean("Does it have food spots (Yes/No)"));
				studyspot.setHasGroupTables(rs.getBoolean("Does it have group tables? (Yes/No)"));
				studyspot.setIndoors(rs.getBoolean("Indoors or Outdoors"));
				studyspot.setRating(rs.getDouble("Rating (1-5) [update]"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return studyspot;
	}

	public List<StudySpot> getStudySpotByKeyword(String keyword) {
		/**
		 * This method retrieves a list of StudySpots that matches the keyword
		 * entered by the user.
		 */
		List<StudySpot> StudySpots = new ArrayList<StudySpot>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Study Spots DB where Name LIKE ? OR Area LIKE ? OR Location LIKE ? OR mainMajor LIKE ?");

			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");
			preparedStatement.setString(4, "%" + keyword + "%");

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				StudySpot studyspot = new StudySpot();
				studyspot.setLocationID(rs.getInt("Location ID"));
				studyspot.setName(rs.getString("Name"));
				studyspot.setArea(rs.getString("Area"));
				studyspot.setLocation(rs.getString("Location"));
				studyspot.setLink(rs.getString("Google map link"));
				studyspot.setCapacity(rs.getInt("Capacity"));
				studyspot.setOpeningTime(rs.getDate("Opening time"));
				studyspot.setClosingTime(rs.getDate("Closing time"));
				studyspot.setMainMajor(rs.getString("Main discipline/major there"));
				studyspot.setHasComputers(rs.getBoolean("Does it Have computers"));
				studyspot.setHasFood(rs.getBoolean("Does it have food spots (Yes/No)"));
				studyspot.setHasGroupTables(rs.getBoolean("Does it have group tables? (Yes/No)"));
				studyspot.setIndoors(rs.getBoolean("Indoors or Outdoors"));
				studyspot.setRating(rs.getDouble("Rating (1-5) [update]"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return StudySpots;
	}
}
