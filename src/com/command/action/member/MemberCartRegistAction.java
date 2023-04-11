package com.command.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.CartVO;
import com.command.dto.MemberVO;
import com.command.service.MemberproductService;

public class MemberCartRegistAction implements Action {
	
	private MemberproductService memberproductService;
	
	public void setMemberproductService(MemberproductService memberproductService) {
		this.memberproductService = memberproductService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url =null;
		
			int cart_qty = Integer.parseInt(request.getParameter("cart_qty"));
			String product_code = request.getParameter("product_code");
			HttpSession session = request.getSession();
			MemberVO member = (MemberVO) session.getAttribute("loginUser");
			
			String member_id = member.getMember_id();
			
			CartVO cart = new CartVO();
			cart.setProduct_code(product_code);
			cart.setCart_qty(cart_qty);
			cart.setCart_number(memberproductService.getCartnumber());
			cart.setMember_id(member_id);
			
			memberproductService.insertcart(cart);
			
			request.setAttribute("product_code", product_code);
		return url;
	}

}
