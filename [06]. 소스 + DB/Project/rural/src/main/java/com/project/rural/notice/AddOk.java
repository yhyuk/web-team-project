package com.project.rural.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.project.rural.CheckMember;

/**
 * 관리자 - add.do에서 작성된 글을 DB작업하는 클래스
 * @author 김영혁
 */
@WebServlet("/notice/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CheckMember cm = new CheckMember();
		cm.check(req, resp);
		
		String realFolder="";
		String saveFolder = "/assets/img/notice";		
		String encType = "UTF-8";	
		int maxSize=5*1024*1024;	
				
		ServletContext context = this.getServletContext();	
		realFolder = context.getRealPath(saveFolder);
		
		ArrayList<String> images = new ArrayList<String>();

		MultipartRequest multi = new MultipartRequest(req,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

		Enumeration e = multi.getFileNames();
		
		while (e.hasMoreElements()) {
			images.add(multi.getFilesystemName(e.nextElement().toString()));
		}

		String category = multi.getParameter("category");
		String title = multi.getParameter("title");
		String detail = multi.getParameter("detail");
		
		NoticeDAO dao = new NoticeDAO();
		NoticeDTO dto = new NoticeDTO();
		
		HttpSession session = req.getSession();
		
		dto.setId(session.getAttribute("id").toString());
		dto.setCategory(category);
		dto.setTitle(title);
		dto.setDetail(detail);
		dto.setImages(images);
		
		int result = dao.add(dto);
		
		if(images != null) {
			dao.addImg(images);
		}
		
		if ( result == 1 ) {
			resp.sendRedirect("/rural/notice/list.do");
		} else {
			resp.sendRedirect("/rural/notice/add.do");
		}

	}

}

