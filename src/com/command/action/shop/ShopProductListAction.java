package com.command.action.shop;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.dto.ShopVO;
import com.command.service.ProductService;

public class ShopProductListAction implements Action {

	private ProductService productService;
	
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String url = "/WEB-INF/views/shop/shop_productList.jsp";
		
		
		HttpSession session = request.getSession();
		ShopVO loginshop = (ShopVO) session.getAttribute("loginshop");
		if (session == null || loginshop == null) {
			// Redirect to an appropriate error page or login page
		}
		String shop_id = loginshop.getShop_id();
		List<ProductVO> productList = productService.getProductList(shop_id);
		
		int count = productService.getProductListCount(shop_id);
		Map<String,Object> dataMap = new HashMap<String,Object>();
		dataMap.put("productList", productList);
		
		dataMap.put("count", count); 
		request.setAttribute("dataMap", dataMap);
		
		return url;

		
	}

}
