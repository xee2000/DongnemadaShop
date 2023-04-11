package com.command.action.deliver;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;

public class DeliverIdCheckAction implements Action {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String resultStr = "";		
		String deliver_code =request.getParameter("deliver_code");
		
		DeliverVO deliver = deliverService.getDeliver(deliver_code);
		if(deliver!=null) {
			resultStr="DUPLICATED";
		}		
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(resultStr);
		out.close();
		
		return url;
	}

}
