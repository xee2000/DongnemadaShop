package com.command.action.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.ShopVO;
import com.command.service.ShopService;

public class ShopLoginAction implements Action {

	private ShopService shopService;

	public void setShopService(ShopService shopService) {
		this.shopService = shopService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/shop/main.do";

		String shop_id = request.getParameter("shop_id");
		String shop_pw = request.getParameter("shop_pw");

		int result = shopService.shoplogin(shop_id, shop_pw);
		switch (result) {
		case 0: // 로그인 성공
			ShopVO loginshop = shopService.getShop(shop_id);
			HttpSession session = request.getSession();
			session.setAttribute("loginshop", loginshop);
			session.setMaxInactiveInterval(60 * 6);
			break;
		case 1: // 아이디 불일치
			url = "redirect:/common/login.do";
			break;
		case 2: // 패스워드 불일치
			url = "redirect:/common/login.do";
			break;
		}

		return url;
	}

}
