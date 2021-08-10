package com.project.rural.worker;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.rural.CheckMember;

/**
 * 
 * @author 신청하기 DB작업 클래스
 *
 */
@WebServlet("/worker/applyok.do")
public class ApplyOk extends HttpServlet {

	@Override // Annotation - 프로그래밍 기능 주석
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		/**
		 * 신청할 글번호 받아오기 
		 */
		String pseq = req.getParameter("seq");
		
		System.out.println(pseq);
		

		String totalApply = req.getParameter("totalApply"); // 인원수
		String detail = req.getParameter("detail"); // 상세 내용
		String isCareer = req.getParameter("isCareer"); // 경력 유무
		
		WorkApplyDAO dao = new WorkApplyDAO();
		WorkApplyDTO dto = new WorkApplyDTO();
		
		HttpSession session = req.getSession();
		dto.setId(session.getAttribute("id").toString());
		dto.setPseq(pseq);
		dto.setTotalApply(totalApply);
		dto.setDetail(detail);
		dto.setIsCareer(isCareer);

		int result = dao.apply(dto);
		
		if (result == 1) {
			resp.sendRedirect("/rural/worker/list.do");
		} else {
			resp.sendRedirect("/rural/worker/apply.do");
		}

	}
}