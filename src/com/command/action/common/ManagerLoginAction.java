package com.command.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.ManagerVO;
import com.command.service.ManagerService;

public class ManagerLoginAction implements Action {

	private ManagerService managerService;

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/manager/main.do";

		String manager_id = request.getParameter("manager_id");
		String manager_pw = request.getParameter("manager_pw");

		int result = managerService.login(manager_id, manager_pw);

		switch (result) {
		case 0: // 로그인 성공
			ManagerVO loginUser = managerService.getManager(manager_id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(60 * 6);
			break;
		case 1: // 아이디 불일치
			url = "redirect:/common/loginForm.do";
			break;
		case 2: // 패스워드 불일치
			url = "redirect:/common/loginForm.do";
			break;
		}
		return url;
	}

}
