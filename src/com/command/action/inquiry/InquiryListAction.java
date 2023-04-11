package com.command.action.inquiry;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.SearchCriteria;
import com.command.action.Action;
import com.command.service.InquiryService;
import com.command.service.QnaService;

public class InquiryListAction implements Action {

	private InquiryService inquiryService;

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/inquiryList.jsp";

		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		if (perPageNumParam == null || perPageNumParam.isEmpty())
			perPageNumParam = "10";
		if (pageParam == null || pageParam.isEmpty())
			pageParam = "1";
		if (searchType == null)
			searchType = "";
		if (keyword == null)
			keyword = "";

		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);

		try {
			Map<String, Object> dataMap = inquiryService.getInquiryList(cri);
			request.setAttribute("dataMap", dataMap);

			return url;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
