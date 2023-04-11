package com.command.action.member;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.MemberVO;
import com.command.service.MemberService;

public class MemberSignupAction implements Action {

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/main.jsp";

		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_name = request.getParameter("member_name");
		String[] member_emails = request.getParameterValues("member_email");
		String member_phone = request.getParameter("member_phone");
		String[] member_addresses = request.getParameterValues("member_address");
		
		MemberVO member = new MemberVO();
		member.setMember_id(member_id);
		member.setMember_pw(member_pw);
		member.setMember_name(member_name);
		member.setMember_email(member_emails[0]+member_emails[1]);
		member.setMember_phone(member_phone);
		member.setMember_address(member_addresses[0]+member_addresses[1]+member_addresses[2]+member_addresses[3]);

		try {
			memberService.regist(member);
		} catch (SQLException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return url;
	}
}
