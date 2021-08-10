package com.project.rural.worker;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.rural.CheckMember;

/**
 * 
 * @author 신청하기 클래스 
 *
 */
@WebServlet("/worker/apply.do")
public class Apply extends HttpServlet {

	@Override // Annotation - 프로그래밍 기능 주석
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		/**
		 * 신청할 게시물 번호를 받아옴.
		 */
		String seq = req.getParameter("seq");
		
		req.setAttribute("seq", seq);

		RequestDispatcher dispathcher = req.getRequestDispatcher("/WEB-INF/views/worker/apply.jsp");
		dispathcher.forward(req, resp);

	}
}
