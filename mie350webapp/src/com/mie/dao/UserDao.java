package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mie.util.DbUtil;
import com.mie.model.*;
import com.mie.controller.*;

import com.mie.util.*;

public class UserDao {

	/**
	 * This class handles the User objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = DbUtil.getConnection();
	static ResultSet rs = null;
	
	public static User login(User user) {

		/**
		 * This method attempts to find the user that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;
		String username = user.getUsername();
		String password = user.getPassword();

		/**
		 * Prepare a query that searches the users table in the database
		 * with the given username and password.
		 */

		String searchQuery = "SELECT * from User_Information_DB INNER JOIN User_Account_Login_DB ON User_Information_DB.username = User_Account_Login_DB.username WHERE username= '"
				+ username + "' AND password='" + password + "'";
		try {
			// connect to DB
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();
			/**
			 * If there are no results from the query, set the member to false.
			 * The person attempting to log in will be redirected to the home
			 * page when isValid is false.
			 */
			
			if (!more) {
				user.setValid(false);
			}

			/**
			 * If the query results in an database entry that matches the
			 * username and password, assign the appropriate information to
			 * the User object.
			 */
			else if (more) {
				user.setValid(true);
				user.setUsername(rs.getString("username"));
				user.setFaculty(rs.getString("faculty"));
				user.setProgram(rs.getString("program"));
				user.setYearOfStudy(rs.getInt("year_of_study"));
				user.setDateCreated(rs.getDate("account_creation_date"));
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred!"
					+ ex);
		}
		/**
		 * Return the User object.
		 */
		return user;

	}
	
	// grab user from database
	public static User setUser(User user) {
		String username = user.getUsername();
		try {
			String searchQuery ="SELECT * from User_Information_DB WHERE username= '"
			+ username + "'";
			Statement stmt = null;
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			while (rs.next()) {
				user.setUsername(rs.getString("username"));
				user.setFaculty(rs.getString("faculty"));
				user.setProgram(rs.getString("program"));
				user.setYearOfStudy(rs.getInt("year_of_study"));
				user.setDateCreated(rs.getDate("account_creation_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	/* 
	 * This method adds a new user to the database
	 */
	public static void addUser(User user) {
		try {
			PreparedStatement preparedStatement = currentCon
					.prepareStatement("insert into User_Account_Login_DB(username,password) values (?, ?)");
					// Parameters start with 1
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			PreparedStatement preparedStatement = currentCon
					.prepareStatement("insert into User_Information_DB(username,faculty,program,yearStudy,accountDateCreated) values (?,?,?,?,?)");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getFaculty());
			preparedStatement.setString(3, user.getProgram());
			preparedStatement.setInt(4, user.getYearOfStudy());
			preparedStatement.setDate(5, new java.sql.Date(user.getDateCreated().getTime()));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}