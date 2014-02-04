package ru.chernobrivenko.loginapp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ru.chernobrivenko.loginapp.service.LoginService;


@WebServlet(description = "Login servlet", urlPatterns ="/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId, password;
		
		userId = request.getParameter("userId");
		password = request.getParameter("password");
		
		LoginService loginService = new LoginService();
		
		if(loginService.authenticate(userId, password))
		{
			request.getSession().setAttribute("userId", loginService.getUserName(userId));
			//response.sendRedirect("success.jsp");
			request.setAttribute("userName", loginService.getUserName(userId));
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else
			response.sendRedirect("login.jsp");
	}

}
