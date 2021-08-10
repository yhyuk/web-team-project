package com.project.rural.farm;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.rural.CheckMember;

/**
 * 주말농장 신청현황 페이지로 매핑시켜주는 클래스
 * @author 유기호
 *
 */
@WebServlet("/farm/applicant.do")
public class Applicant extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		String seq = req.getParameter("seq");
		String isView = req.getParameter("isView") != null ? req.getParameter("isView") : "";
		String page = req.getParameter("page");
		
		//페이징
		int nowPage = 0;		//현재 페이지 번호
		int totalCount = 0;		//총 게시물 수
		int pageSize = 5;		//한 페이지당 출력할 게시물 수
		int totalPage = 0;		//총 페이지 수
		int begin = 0;			//가져올 게시물 시작 위치
		int end = 0;			//가져올 게시물 끝 위치
		int n = 0;				//페이지바 제작
		int loop = 0;			//페이지바 제작
		int blockSize = 5;		//페이지바 제작
		
		if (page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("seq", seq);
		map.put("isView", isView);
		map.put("pseq", seq);
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		FarmDAO dao = new FarmDAO();
		
		totalCount = dao.getTotalApplicant(map);
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		String pagebar = "<nav aria-label='...'>\r\n"
				+ "			<ul class=\"pagination justify-content-center\">";
		
		loop = 1; //while 루프 변수
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //출력되는 페이지 번호
		
		if (n == 1) {
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ");
		} else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/farm/applicant.do?seq=%s&isView=%s&page=%d' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ", seq, isView, n-1);
		}
		
		if (totalPage == 0) {
			pagebar += " <li class='page-item active'><a class='page-link' href='#!'>1</a></li> ";
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format(" <li class='page-item active'><a class='page-link' href='#!'>%d<span class='sr-only'>(current)</span></a></li> ", n);
			} else {
				pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/farm/applicant.do?seq=%s&isView=%s&page=%d'>%d</a></li> ", seq, isView, n, n);
			}
			loop++;
			n++;
		}
		
		if (n > totalPage) {
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!'><img src='/rural/assets/img/logo/next.png' style='width:14px;'/></a></li> "); 
		} else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/farm/applicant.do?seq=%s&isView=%s&page=%d'><img src='/rural/assets/img/logo/next.png' style='width:14px;'/></a></li> ", seq, isView, n);
		}
		
		pagebar += "</ul>\r\n"
				+ "		</nav>";	
		//페이징 End
		
		ArrayList<ApplyDTO> list = dao.applicant(map);
		
		req.setAttribute("list", list);
		req.setAttribute("seq", seq);
		req.setAttribute("isView", isView);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", pagebar);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/farm/applicant.jsp");
		dispatcher.forward(req, resp);
	}

}
