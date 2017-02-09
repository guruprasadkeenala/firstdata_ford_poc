package com.ford.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

public class FordAPIServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final Logger logger = Logger.getLogger(FordAPIServlet.class);
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestor = request.getParameter("requestor");

		String hostedPage;
		
		if (requestor != null && !StringUtils.isBlank(requestor) && "ford".equalsIgnoreCase(requestor)) {
			hostedPage = "/hostedpage.jsp";
		} else {
			hostedPage = "/error.jsp";
		}
		logger.info("REQUESTOR : " + requestor + " & HOSTEDPAGE : " + hostedPage);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(hostedPage);
		try{
			requestDispatcher.forward(request, response);
		} catch(Exception ex){
			logger.error("Excption while forwarding ... "+ex);
		}
	}
}
