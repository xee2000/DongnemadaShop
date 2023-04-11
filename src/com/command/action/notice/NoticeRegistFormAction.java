package com.command.action.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;

public class NoticeRegistFormAction implements Action{
	
		
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url ="/WEB-INF/views/notice/noticeRegist.jsp";
		return url;
	}
}
