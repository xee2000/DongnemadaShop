package com.command.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.MemberVO;
import com.command.service.MemberService;

public class LoginAction implements Action {

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/common/main.do";

		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");

		System.out.println(member_id);
		System.out.println(member_pw);
		int result = memberService.memberlogin(member_id, member_pw);

		switch (result) {
		case 0: //로그인 성공
			MemberVO loginUser = memberService.getMember(member_id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(60 * 6);
			break;
		case 1: //아이디 불일치
			url="redirect:/common/loginForm.do";
			break;
		case 2: //패스워드 불일치
			url="redirect:/common/loginForm.do";
			break;
		}

		return url;
	}

}
