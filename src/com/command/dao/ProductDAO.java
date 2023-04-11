package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.dto.ProductVO;

public interface ProductDAO {

	List<ProductVO> selectProductList(String shop_id) throws SQLException;

	int selectProductListCount(String shop_id) throws SQLException;

	String selectProduct_code() throws SQLException;

	void updateProduct(ProductVO product) throws SQLException;

	void insertProduct(ProductVO product) throws SQLException;

	void deleteProduct(String shop_id) throws SQLException;

	ProductVO selectByCode(String product_code) throws SQLException;

}
