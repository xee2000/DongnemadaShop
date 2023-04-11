package com.command.action.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.service.InquiryService;
import com.command.service.QnaService;

public class InquiryRemoveAction implements Action {

	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/remove_success.jsp";

		String inquiry_code = request.getParameter("inquiry_code");

		inquiryService.remove(inquiry_code);

		return url;
	}

}
