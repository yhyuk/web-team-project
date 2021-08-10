package com.project.rural.community;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.rural.CheckMember;
/**
 * 회원 - 해당 글에 작성된 댓글 아래 답글 작성하기
 * 
 * @author 김영혁
 */
@WebServlet("/community/addreply.do")
public class AddReply extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		String pseq = req.getParameter("pseq");
		String postSeq = req.getParameter("postSeq");
		String detail = req.getParameter("detail");
		
		CommentDAO dao = new CommentDAO();
		CommentDTO dto = new CommentDTO();
		
		HttpSession session = req.getSession();
		
		dto.setId(session.getAttribute("id").toString());
		dto.setPseq(pseq);
		dto.setPostSeq(postSeq);
		dto.setDetail(detail);
		
		int result = dao.addReply(dto);		
		
		if (result == 1) {
			resp.sendRedirect("/rural/community/view.do?seq=" + postSeq);
		} else {
			
			resp.setCharacterEncoding("UTF-8");
			
			PrintWriter writer = resp.getWriter();			
			
			writer.print("<html>");
			writer.print("<head>");
			writer.print("<meta charset='UTF-8'>");
			writer.print("</head>");
			writer.print("<body>");
			writer.print("<script>");
			writer.print("alert('댓글 쓰기 실패');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.print("</body>");
			writer.print("</html>");
			
			writer.close();
		}

	}

}

