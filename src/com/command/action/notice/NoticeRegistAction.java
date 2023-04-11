package com.command.action.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.NoticeVO;
import com.command.service.NoticeService;

public class NoticeRegistAction implements Action{

		private NoticeService noticeService;
		
	public void setNoticeService(NoticeService noticeService) {
			this.noticeService = noticeService;
		}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url="redirect:/notice/list.do";
		
		NoticeVO notice = new NoticeVO();
		
		notice.setNotice_code(request.getParameter("notice_code"));
		notice.setNotice_content(request.getParameter("notice_content"));
		notice.setNotice_title(request.getParameter("notice_title"));
		
		try {
			noticeService.regist(notice);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("notice", notice);
		return url;
	}

}
