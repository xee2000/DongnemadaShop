package com.command.action.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.NoticeVO;
import com.command.service.NoticeService;

public class NoticeModifyFormAction implements Action {

	private NoticeService noticeService;

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/notice/noticeModify.jsp";

		String notice_code = request.getParameter("notice_code");

		NoticeVO notice = new NoticeVO();

		notice = noticeService.getNoticeForModify(notice_code);

		request.setAttribute("notice", notice);

		return url;
	}

}
