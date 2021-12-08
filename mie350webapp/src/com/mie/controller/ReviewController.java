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

public class ReviewController extends HttpServlet {
	/**
	 * This class handles all insert/edit/list functions of the servlet.
	 * 
	 * These are variables that lead to the appropriate JSP pages. INSERT leads
	 * to the Add a Review page. EDIT leads to the Edit a Review page.
	 * LIST_REVIEW_PUBLIC leads to the public listing of reviews.
	 * 
	 */

	private ReviewDao dao;

	/**
	 * Constructor for this class.
	 */ 
	public ReviewController() {
		super();
		dao = new ReviewDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		/**
		 * This class allows users to add reviews. Then the user is redirected to the updated reviews page.
		 */
		
		/**
		 * Getting the current user and setting the username
		 */
		// User user = new User();
		HttpSession session = request.getSession(true);
		String username = (String) session.getAttribute("username");
	   // User user = new User();
		/**
		 * This method retrieves all of the information entered in the form on
		 * the reviews.jsp page.
		 */
		Review reviews = new Review();
		// * Setting the review ID
		int reviewID = (Integer) session.getAttribute("reviewID");
		reviews.setReviewID(reviewID);
		// */
		// reviews.setReviewID(Integer.parseInt(request.getParameter("reviewID")));
		reviews.setLocationID(Integer.parseInt(request.getParameter("locationID")));
		// reviews.setUsername(request.getParameter("username"));
		reviews.setUsername(username);
		reviews.setLocation(request.getParameter("location"));
		reviews.setRating(Double.parseDouble(request.getParameter("rating")));
		reviews.setRecommend(Boolean.parseBoolean(request.getParameter("recommend")));
		reviews.setReview(request.getParameter("review"));

		dao.addReview(reviews);

		/**
		 * Once the review is added, the page will redirect to
		 * the reviews page.
		 */

		// RequestDispatcher view = request
		// 		.getRequestDispatcher(REVIEWS);
		// request.setAttribute("reviews", dao.getAllReviews());
		// view.forward(request, response);
		 
		// String action = request.getParameter("action");
		// if (action.equalsIgnoreCase("getreviews")) {
		// 	forward = REVIEWS;
		// 	request.setAttribute("students", dao.getReviews());
		// } else if (action.equalsIgnoreCase("add")) {
		// 	forward = REVIEWS;
		// } else {
		// 	forward = REVIEWS;
		// }

		response.sendRedirect("reviewsloggedin.jsp");

		// RequestDispatcher view = request.getRequestDispatcher(forward);
		// view.forward(request, response);
	}

	// protected void doPost(HttpServletRequest request,
	// 		HttpServletResponse response) throws ServletException, IOException {

	// 	/**
	// 	 * This method retrieves all of the information entered in the form on
	// 	 * the reviews.jsp page.
	// 	 */
	// 	Review reviews = new Review();
	// 	reviews.setReviewID(Integer.parseInt(request.getParameter("reviewID")));
	// 	reviews.setLocationID(Integer.parseInt(request.getParameter("locationID")));
	// 	reviews.setUsername(request.getParameter("username"));
	// 	reviews.setLocation(request.getParameter("location"));
	// 	reviews.setRating(Double.parseDouble(request.getParameter("rating")));
	// 	reviews.setRecommend(Boolean.parseBoolean(request.getParameter("recommend")));
	// 	reviews.setReview(request.getParameter("review"));

	// 	dao.addReview(reviews);

	// 	/**
	// 	 * Once the review is added, the page will redirect to
	// 	 * the reviews page.
	// 	 */
	// 	response.sendRedirect("reviewsloggedin.jsp");

	// 	// RequestDispatcher view = request
	// 	// 		.getRequestDispatcher(REVIEWS);
	// 	// request.setAttribute("reviews", dao.getAllReviews());
	// 	// view.forward(request, response);
	// }
}