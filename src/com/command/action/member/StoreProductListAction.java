package com.command.action.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.SearchCriteria;
import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.service.MemberproductService;

public class StoreProductListAction implements Action{

		private MemberproductService memberproductService;
		
		
	public void setMemberproductService(MemberproductService memberproductService) {
			this.memberproductService = memberproductService;
		}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/member/storelist.jsp";
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam=request.getParameter("page");
		
		if(perPageNumParam==null || perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam==null || pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		List<ProductVO> storeproductList  =  memberproductService.getSearchProductListStore(cri);
		request.setAttribute("storeproductList", storeproductList);
		
		return url;
	}

}
