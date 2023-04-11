package com.command.service;

import java.sql.SQLException;
import java.util.List;

import com.command.dao.ProductDAO;
import com.command.dto.ProductVO;

public class ProductServiceImpl implements ProductService {

	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	@Override
	public List<ProductVO> getProductList(String shop_id) throws SQLException {
		List<ProductVO> productList = null;
		productList = productDAO.selectProductList(shop_id);
		return productList;
	}

	@Override
	public int getProductListCount(String shop_id) throws SQLException {
		int count;
		count = productDAO.selectProductListCount(shop_id);
		return count;
	}

	@Override
	public String getProduct_code() throws SQLException {
		String product_code = null;
		product_code = productDAO.selectProduct_code();
		return product_code;
	}

	@Override
	public void modifyProduct(ProductVO product) throws SQLException {

		productDAO.updateProduct(product);
	}

	@Override
	public void registProduct(ProductVO product) throws SQLException {
		productDAO.insertProduct(product);
	}

	@Override
	public void removeProduct(String shop_id) throws SQLException {
		productDAO.deleteProduct(shop_id);
	}

	@Override
	public ProductVO getProductByCode(String product_code) throws SQLException {
		ProductVO product = productDAO.selectByCode(product_code);
		return product;
	}

}
