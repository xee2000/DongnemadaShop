package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.CartVO;
import com.command.dto.ProductVO;

public interface MemberproductDAO {

	//상품리스트
		List<ProductVO> selectProductList(SearchCriteria cri) throws SQLException;
		
		//마트리스트
		List<ProductVO> selectSearchProductListMart(SearchCriteria cri)throws SQLException;
		
		//편의점리스트
		List<ProductVO> selectSearchProductListStore(SearchCriteria cri)throws SQLException;
		
		//리스트로 조회돈 상품리스트 총갯수
		int selectSearchProductListCount(SearchCriteria cri) throws SQLException;
		
		List<ProductVO> selectProductList(String searchType, String keyword) throws SQLException;
		
		String selectCartnumber()throws SQLException;
		
		void insertcart(CartVO cart) throws SQLException;
}
