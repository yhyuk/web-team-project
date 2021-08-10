package com.project.rural.notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.rural.CheckMember;

/**
 * 관리자 - 알림마당 글 수정하기
 * @author 김영혁
 */
@WebServlet("/notice/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		String seq = req.getParameter("seq");
		
		NoticeDAO dao = new NoticeDAO();
		NoticeDTO dto = dao.get(seq);
		
		ArrayList<String> ilist = dao.listImg(seq);
		
		req.setAttribute("dto", dto);
		req.setAttribute("ilist", ilist);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/notice/edit.jsp");
		dispatcher.forward(req, resp);

	}

}

