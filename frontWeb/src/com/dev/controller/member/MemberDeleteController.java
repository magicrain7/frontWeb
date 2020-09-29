package com.dev.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.common.Controller;
import com.dev.dao.MemberDAO;
import com.dev.model.MemberVO;

public class MemberDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("회원삭제");
		//파라미터 받기
		String id = request.getParameter("id");
		//유효성 체크
		
		//vo에 담기
		MemberVO member = new MemberVO();
		member.setId(id);
		//서비스 로직
		int r = MemberDAO.getInstance().delete(member);
		//결과저장
		
		//뷰페이지로 이동
		request.getRequestDispatcher("/member/memberDeleteOutput.jsp")
			   .forward(request, response);
		
	}

}
