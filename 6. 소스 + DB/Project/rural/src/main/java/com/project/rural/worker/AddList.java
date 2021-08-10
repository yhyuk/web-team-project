package com.project.rural.worker;

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
 * 
 * @author 등록한 내역을 리스트로 보여주는 클래스
 *
 */
@WebServlet("/worker/addlist.do")
public class AddList extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		WorkerDAO dao = new WorkerDAO();

		//페이징 처리
		int nowPage = 0; 		// 현재 페이지번호
		int totalCount = 0;		// 총 게시물
		int pageSize = 10;		// 한 페이지당 출력할 게시물 수
		int totalPage = 0;		// 총 페이지 수
		int begin = 0;			// 가져올 게시물 시작 위치
		int end = 0;			// 가져올 게시물 끝 위치 
		int n = 0;				// 페이지바 제작 (출력되는 페이지 변수)
		int blockSize = 5;		// 페이지바 제작 (출력되는 페이지 변수)
		int loop = 0;			// 페이지바 제작 (루프 변수)
		
		String page = req.getParameter("page");
		
		if (page == null || page.equals("")) {
			nowPage = 1;
		} else {
			nowPage = Integer.parseInt(page);
		}
		
		begin = ((nowPage - 1) * pageSize) + 1;
		end = begin + pageSize - 1;
		
		HashMap<String, String> map = new HashMap<String, String>();
		HttpSession session = req.getSession();

		String id = session.getAttribute("id").toString();

		map.put("id", id);
		map.put("begin", begin + "");
		map.put("end", end + "");
		
		totalCount = dao.addListTotalCount(map);
		
		
		totalPage = (int)Math.ceil((double)totalCount / pageSize);
		
		
		
		String pagebar = "<nav aria-label='...'>\r\n"
				+ "			<ul class=\"pagination\">";
		
		
		loop = 1; //while 루프 변수
		n = ((nowPage - 1) / blockSize) * blockSize + 1; //출력되는 페이지 번호
		
		if (n == 1) {
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ");
		} else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/worker/addlist.do?page=%d' tabindex='-1'><img src='/rural/assets/img/logo/previous.png' style='width:14px;'/></a></li> ", n-1);				
		}
		

		
		if (totalPage == 0) {
			pagebar += " <li class='page-item active'><a class='page-link' href='#!'>1</a></li> ";
		}
		
		while (!(loop > blockSize || n > totalPage)) {
			
			if (n == nowPage) {
				pagebar += String.format(" <li class='page-item active'><a class='page-link' href='#!'>%d<span class='sr-only'>(current)</span></a></li> ", n);
			} else {
				
				pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/worker/addlist.do?page=%d' tabindex='-1'>%d</a></li> ",n, n);
			}
			
			loop++;
			n++;
		}
		
		if (n > totalPage) {
			pagebar += String.format(" <li class='page-item disabled'><a class='page-link' href='#!'><img src='/rural/assets/img/logo/next.png' style='width:14px;'/></a></li> "); 
		} else {
			pagebar += String.format(" <li class='page-item'><a class='page-link' href='/rural/worker/addlist.do?page=%d' tabindex='-1'><img src='/rural/assets/img/logo/next.png' style='width:14px;'/></a></li> ", n);
		}
		
		
		pagebar += "</ul>\r\n"
				+ "		</nav>";	
		//페이징 End
		
		
		
		
		ArrayList<WorkerDTO> list = dao.addList(map);

		req.setAttribute("list", list);

		for (WorkerDTO dto : list) {

			// 내용이 길면 자르기
			String title = dto.getTitle();

			if (title.length() > 20) {
				title = title.substring(0, 20) + "..";
				dto.setDetail(title);
			}
		}
		
		
		
		req.setAttribute("map", map);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", nowPage);
		
		req.setAttribute("pagebar", pagebar);

		RequestDispatcher dispathcher = req.getRequestDispatcher("/WEB-INF/views/worker/addlist.jsp");
		dispathcher.forward(req, resp);

	}
}