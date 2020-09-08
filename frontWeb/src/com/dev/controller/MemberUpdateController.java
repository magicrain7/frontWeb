package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.model.MemberDAO;
import com.dev.model.MemberVO;

public class MemberUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("회원정보수정(update)");
		//파라미터 받기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		String mailyn = request.getParameter("mailyn");
		String reason = request.getParameter("reason");
		String hobby = request.getParameter("hobby");
		//유효성 체크
		
		//vo에 담기
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPw(pw);
		member.setJob(job);
		member.setGender(gender);
		member.setMailyn(mailyn);
		member.setReason(reason);
		member.setHobby(hobby);
		int r = MemberDAO.getInstance().update(member);
		//서비스 로직
		
		//결과저장
		request.setAttribute("cnt", r);
		//뷰페이지로 이동
		request.getRequestDispatcher("/member/memberUpdateOutput.jsp")
			   .forward(request, response);
	}

}
