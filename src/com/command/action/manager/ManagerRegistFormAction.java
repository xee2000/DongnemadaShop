package com.command.action.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;

public class ManagerRegistFormAction implements Action{
	
		
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url ="/WEB-INF/views/manager/managerRegist.jsp";
		return url;
	}
}
