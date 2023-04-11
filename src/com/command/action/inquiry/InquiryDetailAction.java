package com.command.action.inquiry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.InquiryVO;
import com.command.service.InquiryService;

public class InquiryDetailAction implements Action {
	
	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/inquiryDetail.jsp";

		String inquiry_code = request.getParameter("inquiry_code");
		String from = request.getParameter("from");

		InquiryVO inquiry = new InquiryVO();

		if (from != null && from.equals("list")) {
			inquiry = inquiryService.getInquiry(inquiry_code);
			url = "redirect:/qna/detail.do?inquiry_code=" + inquiry_code;
		} else {
			inquiry = inquiryService.getInquiryForModify(inquiry_code);
		}

		request.setAttribute("inquiry", inquiry);

		return url;
	}

}
