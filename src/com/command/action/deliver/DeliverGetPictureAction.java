package com.command.action.deliver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;
import com.command.utils.FileDownloadResolver;
import com.command.utils.GetUploadPath;

public class DeliverGetPictureAction implements Action {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String deliver_code = request.getParameter("deliver_code");
		DeliverVO deliver = deliverService.getDeliver(deliver_code);
		
		String fileName = deliver.getDeliver_picture();		
		String savedPath = GetUploadPath.getUploadPath("deliver.picture.upload");	
		
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}

}
