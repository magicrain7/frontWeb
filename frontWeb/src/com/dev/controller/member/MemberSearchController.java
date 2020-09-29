package com.dev.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.common.Controller;
import com.dev.dao.MemberDAO;
import com.dev.model.MemberVO;

public class MemberSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 변수에 저장
		String id = request.getParameter("id");
		//job에 따라서 forward page 지정
		String path="memberSearch.jsp";
		String job = request.getParameter("job");
		if(job.equals("delete")) {
			path = "memberDelete.jsp";
		} else if(job.equals("update")) {
			path = "memberUpdate.jsp";
		}
		
		
		//유효성 체크
		//if(id==null||id=="") {
		if(id.isEmpty()) {
			request.setAttribute("error", "id 입력");
			//request.setAttribute("errorCode", 1);
			//search페이지로 포워드
			request.getRequestDispatcher("/member/"+path).forward(request, response);
			return;
		}
		
		//vo에 담기
		MemberVO member = new MemberVO();
		member.setId(id);

		//단건 조회
		member = MemberDAO.getInstance().selectOne(member);
		//서비스
		request.setAttribute("member", member);
		if(job.equals("search")) {
			request.getRequestDispatcher("/member/memberSearchOutput.jsp").forward(request, response);			
		} else {
			request.getRequestDispatcher("/member/"+path).forward(request, response);
		}
		//조회결과를 저장 후에 결과 페이지로 포워드.
		
	}

}
