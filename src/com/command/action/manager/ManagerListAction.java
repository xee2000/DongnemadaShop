package com.command.action.manager;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.SearchCriteria;
import com.command.action.Action;
import com.command.service.ManagerService;

public class ManagerListAction implements Action {

	private ManagerService managerService;

	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/manager/list.jsp";

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
			Map<String, Object> dataMap = managerService.getManagerList(cri);
			request.setAttribute("dataMap", dataMap);

			return url;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

}
