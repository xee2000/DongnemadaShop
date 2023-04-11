package com.command.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.MemberVO;
import com.command.dto.ProductVO;
import com.command.dto.ShopVO;
import com.command.service.ProductService;

public class ProductDetailAction implements Action{
		private ProductService productService;
		

	public void setProductService(ProductService productService) {
			this.productService = productService;
		}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/member/productdetail.jsp";
		
		String product_code = request.getParameter("product_code");
		ProductVO product = productService.getProductByCode(product_code);
		String shop_brand	= product.getShop_brand();
		request.setAttribute("product", product);
		request.setAttribute("shop_brand", shop_brand);
		return url;
	}

}
