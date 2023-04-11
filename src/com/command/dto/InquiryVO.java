package com.command.dto;

import java.util.Date;

public class InquiryVO {

	private String inquiry_code;
	private String inquiry_title;
	private String inquiry_content;
	private Date inquiry_regdate;

	public String getInquiry_code() {
		return inquiry_code;
	}

	public void setInquiry_code(String inquiry_code) {
		this.inquiry_code = inquiry_code;
	}

	public String getInquiry_title() {
		return inquiry_title;
	}

	public void setInquiry_title(String inquiry_title) {
		this.inquiry_title = inquiry_title;
	}

	public String getInquiry_content() {
		return inquiry_content;
	}

	public void setInquiry_content(String inquiry_content) {
		this.inquiry_content = inquiry_content;
	}

	public Date getInquiry_regdate() {
		return inquiry_regdate;
	}

	public void setInquiry_regdate(Date inquiry_regdate) {
		this.inquiry_regdate = inquiry_regdate;
	}

}
