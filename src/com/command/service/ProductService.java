package com.command.service;

import java.sql.SQLException;
import java.util.List;

import com.command.dto.ProductVO;

public interface ProductService {

	List<ProductVO> getProductList(String shop_id) throws SQLException;

	int getProductListCount(String shop_id) throws SQLException;

	String getProduct_code() throws SQLException;

	void modifyProduct(ProductVO product) throws SQLException;

	void registProduct(ProductVO product) throws SQLException;

	void removeProduct(String shop_id) throws SQLException;

	ProductVO getProductByCode(String product_code) throws SQLException;
	
}