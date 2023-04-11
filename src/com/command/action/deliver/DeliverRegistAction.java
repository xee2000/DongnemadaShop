package com.command.action.deliver;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;

public class DeliverRegistAction implements Action {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/deliver/regist_success.jsp";
		
		request.setCharacterEncoding("utf-8"); //한글 인코딩
		
		String deliver_code = request.getParameter("deliver_code");
		String deliver_pw = request.getParameter("deliver_pw");
		String deliver_name = request.getParameter("deliver_name");
		String deliver_section = request.getParameter("deliver_section");
		String deliver_type = request.getParameter("deliver_type");	
		String deliver_phone = request.getParameter("deliver_phone");
		String deliver_picture = request.getParameter("deliver_picture");
		
		DeliverVO deliver = new DeliverVO();
		deliver.setDeliver_code(deliver_code);
		deliver.setDeliver_name(deliver_name);
		deliver.setDeliver_phone(deliver_phone);
		deliver.setDeliver_pw(deliver_pw);
		deliver.setDeliver_section(deliver_section);
		deliver.setDeliver_type(deliver_type);
		deliver.setDeliver_picture(deliver_picture);
		
		try {
			deliverService.registDeliver(deliver);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}