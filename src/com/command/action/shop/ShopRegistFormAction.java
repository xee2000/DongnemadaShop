package com.command.action.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.ShopVO;

public class ShopRegistFormAction implements Action{


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		String url="/WEB-INF/views/shop/shop_registForm.jsp";
		
		HttpSession session = request.getSession();
		ShopVO loginshop = (ShopVO) session.getAttribute("loginshop");
		String shop_id = loginshop.getShop_id();

		
		request.setAttribute("shop_id", shop_id);
		return url;
	}

}
