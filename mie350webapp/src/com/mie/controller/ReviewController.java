package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mie.dao.ReviewDao;
import com.mie.model.Review;

public class ReviewController extends HttpServlet {
	/**
	 * This class handles all insert/edit/list functions of the servlet.
	 * 
	 * These are variables that lead to the appropriate JSP pages. INSERT leads
	 * to the Add a Review page. EDIT leads to the Edit a Review page.
	 * LIST_REVIEW_PUBLIC leads to the public listing of reviews.
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String REVIEWS = "/reviews.jsp";
	private static String EDIT = "/editStudent.jsp";
	private static String LIST_REVIEW = "/listStudentPublic.jsp";

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

		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("add")) {
			forward = REVIEWS;
		} else {
			forward = REVIEWS;
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		/**
		 * This method retrieves all of the information entered in the form on
		 * the reviews.jsp page.
		 */
		Review review = new Review();
		review.setReviewID(Integer.parseInt(request.getParameter("reviewID")));
		review.setLocationID(Integer.parseInt(request.getParameter("locationID")));
		review.setUsername(request.getParameter("username"));
		review.setLocation(request.getParameter("location"));
		review.setRating(Double.parseDouble(request.getParameter("rating")));
		review.setRecommended(Boolean.parseBoolean(request.getParameter("recommend")));
		review.setReview(request.getParameter("review"));

		dao.addReview(review);

		/**
		 * Once the review is added, the page will redirect to
		 * the reviews page.
		 */
		RequestDispatcher view = request
				.getRequestDispatcher(REVIEWS);
		request.setAttribute("reviews", dao.getAllReviews());
		view.forward(request, response);
	}
}