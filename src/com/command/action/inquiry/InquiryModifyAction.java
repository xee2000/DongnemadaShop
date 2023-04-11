package com.command.action.inquiry;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.InquiryVO;
import com.command.service.InquiryService;

public class InquiryModifyAction implements Action {

	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/requestQna/inquiryDetail.do";

		String inquiry_code = request.getParameter("inquiry_code");

		String inquiry_title = request.getParameter("inquiry_title");
		String inquiry_content = request.getParameter("inquiry_content");

		InquiryVO inquiry = new InquiryVO();
		inquiry.setInquiry_content(inquiry_content);
		inquiry.setInquiry_code(inquiry_code);
		inquiry.setInquiry_title(inquiry_title);

		url += "?inquiry_code=" + inquiry_code;
		try {
			inquiryService.modify(inquiry);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return url;
	}

}
