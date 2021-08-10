package com.project.rural.exp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.rural.CheckMember;
/**
 * 농촌체험(농부)에서 글을 작성하기 위한 클래스
 * @author Jiyoon Kyeong
 *
 */
@WebServlet("/exp/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/exp/add.jsp");
		dispatcher.forward(req, resp);

	}
}
