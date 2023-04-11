package com.command.action.deliver;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;

public class DeliverRemoveAction implements Action {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/deliver/remove_success.jsp";
		
		String deliver_code = request.getParameter("deliver_code");
		
		try {
			deliverService.removeDeliver(deliver_code);
			
			HttpSession session = request.getSession();
			DeliverVO loginDeliver = (DeliverVO)session.getAttribute("loginDeliver");
			if(loginDeliver!=null && deliver_code.equals(loginDeliver.getDeliver_code())) {
				session.invalidate();
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}