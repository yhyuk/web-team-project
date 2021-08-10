package com.project.rural.community;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.rural.CheckMember;

/**
 * 회원 - 커뮤니티에 글을 작성하는 클래스
 * @author 김영혁
 */
@WebServlet("/community/add.do")
public class Add extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/add.jsp");
		dispatcher.forward(req, resp);

	}

}
