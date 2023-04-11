package com.command.action.manager;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.ManagerVO;
import com.command.service.ManagerService;

public class ManagerDetailAction implements Action {

	private ManagerService managerService;

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/member/detail.jsp";

		String id = request.getParameter("id");
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");

		ManagerVO manager = new ManagerVO();

		try {
			manager = managerService.getManager(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("keyword", keyword);
		request.setAttribute("searchType", searchType);
		request.setAttribute("manager", manager);
		
		return url;
	}

}
