package com.command.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.CartVO;
import com.command.dto.ProductVO;

public interface MemberproductService {

	Map<String, Object> getProductList(SearchCriteria cri) throws SQLException;

	// 마트리스트
	List<ProductVO> getSearchProductListMart(SearchCriteria cri) throws SQLException;

	// 편의점리스트
	List<ProductVO> getSearchProductListStore(SearchCriteria cri) throws SQLException;

	List<ProductVO> selectProductList(String searchType, String keyword) throws SQLException;

	String getCartnumber() throws SQLException;

	void insertcart(CartVO cart) throws SQLException;

}
