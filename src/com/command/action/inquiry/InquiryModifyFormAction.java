package com.command.action.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.InquiryVO;
import com.command.service.InquiryService;

public class InquiryModifyFormAction implements Action {

	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/inquiryModify.jsp";

		String inquiry_code = request.getParameter("inquiry_code");

		InquiryVO inquiry = new InquiryVO();

		inquiry = inquiryService.getInquiryForModify(inquiry_code);

		request.setAttribute("inquiry", inquiry);

		return url;
	}

}
