package com.command.action.inquiry;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.InquiryVO;
import com.command.service.InquiryService;

public class InquiryRegistAction implements Action {

	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/regist_success.jsp";

		InquiryVO inquiry = new InquiryVO();

		inquiry.setInquiry_content("qna_content");;
		inquiry.setInquiry_title("qna_title");;

		try {
			inquiryService.regist(inquiry);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("inquiry", inquiry);
		return url;
	}

}
