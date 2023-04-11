package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.MemberproductDAO;
import com.command.dto.CartVO;
import com.command.dto.ProductVO;

public class MemberproductServiceImpl implements MemberproductService{
	
	private MemberproductDAO memberproductDAO;
	
	

	public void setMemberproductDAO(MemberproductDAO memberproductDAO) {
		this.memberproductDAO = memberproductDAO;
	}



	@Override
	public Map<String, Object> getProductList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<ProductVO> productList = memberproductDAO.selectProductList(cri);
		dataMap.put("productList", productList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberproductDAO.selectSearchProductListCount(cri));
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}



	@Override
	public List<ProductVO> getSearchProductListMart(SearchCriteria cri) throws SQLException {
		List<ProductVO> productList = memberproductDAO.selectSearchProductListMart(cri);
		return productList;
	}



	@Override
	public List<ProductVO> getSearchProductListStore(SearchCriteria cri) throws SQLException {
		List<ProductVO> productList = memberproductDAO.selectSearchProductListStore(cri);
		return productList;
	}



	@Override
	public List<ProductVO> selectProductList(String searchType, String keyword) throws SQLException {
		List<ProductVO> productList = memberproductDAO.selectProductList(searchType, keyword);
		return productList;
	}
	
	@Override
	public String getCartnumber() throws SQLException {
		String cartnumber = memberproductDAO.selectCartnumber();
		return cartnumber;
	}



	@Override
	public void insertcart(CartVO cart) throws SQLException {

		memberproductDAO.insertcart(cart);
	}
	
	


}
