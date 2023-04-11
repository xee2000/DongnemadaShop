package com.command.action.deliver;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;

public class DeliverModifyFormAction implements Action  {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/deliver/modify.jsp";
		
		String deliver_code =request.getParameter("deliver_code");
		
		try {
			DeliverVO deliver = deliverService.getDeliver(deliver_code);
			
			request.setAttribute("deliver",deliver);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
