package com.mie.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.ReviewDao;
import com.mie.model.Review;
import com.mie.model.*;
import com.mie.dao.*;

public class SavedSpotsController extends HttpServlet {
	/**
	 * This class handles all insert/edit/list functions of the servlet.
	 * 
	 * These are variables that lead to the appropriate JSP pages. INSERT leads
	 * to the Add a Review page. EDIT leads to the Edit a Review page.
	 * LIST_REVIEW_PUBLIC leads to the public listing of reviews.
	 * 
	 */

	private SavedSpotsDao savedDao;
	private StudySpotDao studyDao;

	/**
	 * Constructor for this class.
	 */ 
	public SavedSpotsController() {
		super();
		savedDao = new SavedSpotsDao();
		studyDao = new StudySpotDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		/**
		 * This class allows users to add saved study spots. Then the user is redirected to the updated saved study spots page.
		 */
		
		/**
		 * This method retrieves all of the information entered in the form on
		 * the reviews.jsp page.
		 */
		User user = new User();
		String username=request.getParameter("un");
		HttpSession session = request.getSession(false); 
		session.setAttribute("username", username);
		
		
		// String username = request.getParameter("username");
		// String location = request.getParameter("location");
		// String locationID = request.getParameter("locationID");
		// String rating = request.getParameter("rating");
		
		// // update database
		// savedDao.addSavedSpot(username, location, locationID, rating);

		// // update user's list
		// StudySpot studyspot = studyDao.getStudySpotById(locationID);
		// User user = 


		response.sendRedirect("mysavedspots.jsp");
		
	}
	protected void postGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
	}
}