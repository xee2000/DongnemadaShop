package com.command.service;

import java.sql.SQLException;
import java.util.List;

import com.command.dao.Product_CategoryDAO;
import com.command.dto.Product_CategoryVO;

public class Product_CategoryServiceImpl implements Product_CategoryService {

	private Product_CategoryDAO product_categoryDAO;

	public void setProduct_categoryDAO(Product_CategoryDAO product_categoryDAO) {
		this.product_categoryDAO = product_categoryDAO;
	}

	@Override
	public List<Product_CategoryVO> selectListProductCategorymenu() throws SQLException {
		List<Product_CategoryVO> productcatogoryList = product_categoryDAO.selectListProductCategorymenu();
		return productcatogoryList;
	}

}
