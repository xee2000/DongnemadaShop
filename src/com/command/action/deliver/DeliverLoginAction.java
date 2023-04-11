package com.command.action.deliver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;

public class DeliverLoginAction implements Action {

	private DeliverService deliverService;

	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/deliver/main.do";

		String deliver_code = request.getParameter("deliver_code");
		String deliver_pw = request.getParameter("deliver_pw");

		int result = deliverService.login(deliver_code, deliver_pw);

		switch (result) {
		case 0: //로그인 성공
			DeliverVO loginDeliver = deliverService.getDeliver(deliver_code);
			HttpSession session = request.getSession();
			session.setAttribute("loginDeliver", loginDeliver);
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
