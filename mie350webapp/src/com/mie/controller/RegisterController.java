package com.mie.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.format.DateTimeFormatter;  
import java.time.LocalDate; 
import java.util.*;  

import com.mie.model.*;
import com.mie.dao.*;

/**
 * Servlet implementation for RegisterController.
 * 
 * This class handles the registration servlet then assigns session attributes for users
 * who succesfully log into the system.
 */
public class RegisterController extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		/**
		 * Retrieve the entered username and password from the login.jsp form.
		 */
		User user = new User();
		Date date = new Date(System.currentTimeMillis());
		user.setUsername(request.getParameter("un"));
		user.setPassword(request.getParameter("pw"));
		user.setFaculty(request.getParameter("fac"));
		user.setProgram(request.getParameter("program"));
		user.setYearOfStudy(Integer.parseInt(request.getParameter("year")));
		user.setDateCreated(date);

		// add user to the database
		UserDao.addUser(user);

		// then log in
		try {
			/**
			 * Try to see if the member can log in.
			 */
			user = UserDao.login(user);
			user = UserDao.setUser(user);
			/**
			 * If the isValid value is true, assign session attributes to the
			 * current member.  
			 */

			if (user.isValid()) {

				HttpSession session = request.getSession(true);
				session.setAttribute("username", user.getUsername());
				session.setAttribute("faculty", user.getFaculty());
				session.setAttribute("faculty", user.getFaculty());
				session.setAttribute("program", user.getProgram());
				session.setAttribute("yearOfStudy", user.getYearOfStudy());
				session.setAttribute("dateCreated", user.getDateCreated());

				/**
				 * Redirect to the members-only home page.
				 */
				response.sendRedirect("myprofile.jsp");

				/**
				 * Set a timeout variable of 900 seconds (15 minutes) for this
				 * member who has logged into the system.
				 */
				session.setMaxInactiveInterval(900);
			}

			else {
				/**
				 *
				 * Otherwise, redirect the user to the invalid login page and
				 * ask them to log in again with the proper credentials.
				 */
				response.sendRedirect("invalidLogin.jsp");
			}
		}

		catch (Throwable theException) {
			/**
			 * Print out any errors.
			 */
			System.out.println(theException);
		}
	}
}
