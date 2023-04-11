package com.command.action.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.MemberVO;
import com.command.service.MemberService;

public class MemberIdCheckAction implements Action {

	MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = null;

		String resultStr = "";
		String member_id = request.getParameter("member_id");

		MemberVO member = memberService.getMember(member_id);
		if (member != null) {
			resultStr = "DUPLICATED";
		}

		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(resultStr);
		out.close();

		return url;
	}

}
