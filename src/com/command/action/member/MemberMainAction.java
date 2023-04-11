package com.command.action.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.SearchCriteria;
import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.service.MemberproductService;

public class MemberMainAction implements Action{

		private MemberproductService memberproductService;
		
		
	public void setMemberproductService(MemberproductService memberproductService) {
			this.memberproductService = memberproductService;
		}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String  url ="/WEB-INF/views/member/main.jsp";
		
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
		Map<String,Object> dataMap = new HashMap<String,Object>();
		Map<String,Object> productMap = new HashMap<String, Object>();
		List<ProductVO> martProductList = memberproductService.getSearchProductListMart(cri);
		List<ProductVO> storeProductList = memberproductService.getSearchProductListStore(cri);
		System.out.println("dd" + martProductList.size());
		productMap =  memberproductService.getProductList(cri);
		dataMap.put("martProductList", martProductList);
		dataMap.put("storeProductList", storeProductList);
		dataMap.put("productMap", productMap);
		request.setAttribute("dataMap", dataMap);
		
		return url;
	}

}
