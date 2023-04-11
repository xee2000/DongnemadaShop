package com.command.action.notice;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.NoticeVO;
import com.command.service.NoticeService;

public class NoticeModifyAction implements Action{

		private NoticeService noticeService;
		
	public void setNoticeService(NoticeService noticeService) {
			this.noticeService = noticeService;
		}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String url="redirect:/notice/detail.do";
		
		String notice_code = request.getParameter("notice_code");

		String notice_title = request.getParameter("notice_title");
		String notice_content = request.getParameter("notice_content");
	
		NoticeVO notice = new NoticeVO();
		notice.setNotice_content(notice_content);
		notice.setNotice_code(notice_code);
		notice.setNotice_title(notice_title);
		
		url+="?notice_code="+notice_code;
			try {
				noticeService.modify(notice);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		return url;
	}

}


