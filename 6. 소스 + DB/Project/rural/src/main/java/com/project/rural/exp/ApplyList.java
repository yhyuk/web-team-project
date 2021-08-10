package com.project.rural.exp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.rural.CheckMember;


/**
 * 농촌체험에서 사용자(일반)가 신청한 내역을 목록으로 불러오는 클래스
 * @author Jiyoon Kyeong
 *
 */
@WebServlet("/exp/applylist.do")
public class ApplyList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);

		ExpDAO dao = new ExpDAO();
		
		

		/**
		 * 아이디 얻어오기! 
		 */

		HttpSession session = req.getSession();
		String id = session.getAttribute("id").toString();
		
		
		/**
		 * 보고싶은 페이지를 정하기 위한 처리 
		 */
		int nowPage = 0;			//현재 페이지 번호
		int totalCount = 0;			// 총 게시물 수
		int pageSize = 5;			// 한 페이지당 출력할 게시물 수
		int totalPage = 0;			// 총 페이지 수
		int begin = 0;				// 가져올 게시물 시작 위치
		int end = 0;				// 가져올 게시물 끝 위치
		int n =0;					// 페이지바 제작
		int loop = 0;				// 페이지바 제작
		int blockSize = 5;			// 페이지바 제작
		
		/**
		 * 현재 페이지 받아오기
		 */
		String page = req.getParameter("page");
		
		if(page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		/**
		 * nowPage > 지금 보게될 페이지 번호 
		 */
		begin = ((nowPage-1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("begin", begin+ "");
		map.put("end", end+ "");
		map.put("id", id);
		
		/**
		 * 총 게시물 수 알아내기
		 */
		totalCount = dao.totalApplyCount(map);
		
		/**
		 * 총 페이지 수 알아내기
		 */
		totalPage = (int)Math.ceil((double)totalCount /pageSize);
		
		String pagebar = "<nav aria-label='...'>\r\n"
				+ "			<ul class=\"pagination justify-content-center\">";
		loop = 1; //루프변수
		n = ((nowPage -1)/ blockSize) * blockSize + 1; //출력되는 페이지 번호
		
		if (n==1) {
			
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ");
		} else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/exp/applylist.do?page=%d' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ", n-1);
		}
		
		if(totalPage == 0) {
			pagebar += " <li class='page-item active'><a class='page-link' href='#!'>1</a></li> ";
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			if (n == nowPage) {
				pagebar += String.format(" <li class='page-item active'><a class='page-link' href='#!'>%d<span class='sr-only'>(current)</span></a></li> ", n);
			} else {
				pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/exp/applylist.do?page=%d' tabindex='-1'>%d</a></li> ", n, n);
				
			}
			loop++;
			n++;
		}
		
		if (n > totalPage) {
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> "); 
		}else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/exp/applylist.do?page=%d' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ", n);
			
		}
		
		pagebar += "</ul>\r\n"
				+ "		</nav>";	

		
		
		/**
		 * select문으로 신청내역리스트 받아오기
		 */
		ArrayList<ExpApplyDTO> list = dao.applyList(map);
		
		
		for (ExpApplyDTO dto : list) {
			
			/**
			 * 날짜 자르기
			 */
			String startDate = dto.getStartDate();
			String endDate = dto.getEndDate();
			
			startDate = startDate.substring(0,10);
			endDate = endDate.substring(0,10);
			
			dto.setStartDate(startDate);
			dto.setEndDate(endDate);
			
			/**
			 * 승인 미승인
			 */
			String isPass= dto.getIsPass();
			if ("n".equals(isPass)) isPass="미승인";
			else if ("y".equals(isPass)) isPass="승인";
			dto.setIsPass(isPass);
			
		}
		
		
		//3.
		req.setAttribute("list", list);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);
		req.setAttribute("pagebar", pagebar);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/exp/applylist.jsp");
		dispatcher.forward(req, resp);

	}
}