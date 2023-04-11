package com.command.action.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.service.ProductService;

public class ShopProductDetailAction implements Action {

	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/shop/Detail.jsp";

		String product_code = request.getParameter("product_code");
		System.out.println(product_code);
		ProductVO product = productService.getProductByCode(product_code);

		request.setAttribute("product", product);
		return url;
	}

}
