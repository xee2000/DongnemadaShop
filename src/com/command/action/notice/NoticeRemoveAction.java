package com.command.action.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.service.NoticeService;

public class NoticeRemoveAction implements Action {

	private NoticeService noticeService;

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url = "redirect:/notice/list.do";
		
		String notice_code = request.getParameter("notice_code");
		
		noticeService.remove(notice_code);
		
		return url;
	}

}
