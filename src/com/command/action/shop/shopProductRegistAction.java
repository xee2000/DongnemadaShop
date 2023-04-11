package com.command.action.shop;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.service.ProductService;

public class shopProductRegistAction implements Action {

	private ProductService productService;

	
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/shop/shop_ProductRegist_success.jsp";

		ProductVO product = new ProductVO();
		request.setCharacterEncoding("utf-8");
		product.setProduct_code(productService.getProduct_code());
		product.setShop_id(request.getParameter("shop_id"));
		product.setCategory_code(request.getParameter("category_code"));
		product.setProduct_detail(request.getParameter("product_detail"));
		product.setProduct_discount(request.getParameter("product_discount"));
		product.setProduct_keep(request.getParameter("product_keep"));
		product.setProduct_maker(request.getParameter("product_maker"));
		product.setProduct_max(request.getParameter("product_max"));
		product.setProduct_min(request.getParameter("product_min"));
		product.setProduct_name(request.getParameter("product_name"));
		product.setProduct_origin(request.getParameter("product_origin"));
		product.setProduct_price(request.getParameter("product_price"));
		product.setProduct_status(request.getParameter("product_status"));
		product.setProduct_picture(request.getParameter("product_picture"));
		try {

			productService.registProduct(product);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;

	}

}
