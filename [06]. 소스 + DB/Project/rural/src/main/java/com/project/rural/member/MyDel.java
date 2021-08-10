package com.project.rural.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/mydel.do")
public class MyDel extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/**
		 * mydel.jsp로 이동하기위한 서블릿
		 */

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/mydel.jsp");
		dispatcher.forward(req, resp);

	}

}

