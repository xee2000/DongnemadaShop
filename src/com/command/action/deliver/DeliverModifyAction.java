package com.command.action.deliver;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;

import com.command.action.Action;
import com.command.dto.DeliverVO;
import com.command.service.DeliverService;
import com.command.utils.FileUploadResolver;
import com.command.utils.GetUploadPath;
import com.command.utils.MultipartHttpServletRequestParser;

public class DeliverModifyAction implements Action {
	
	private DeliverService deliverService;
	public void setDeliverService(DeliverService deliverService) {
		this.deliverService = deliverService;
	}
	
	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="redirect:/deliver/detail.do?deliver_code=";
		
		MultipartHttpServletRequestParser multiReq 
			= new MultipartHttpServletRequestParser(request,
				 				MEMORY_THRESHOLD, MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		
		url+=multiReq.getParameter("deliver_code");
		
		
		String deliver_code = multiReq.getParameter("deliver_code");
		String deliver_pw = multiReq.getParameter("deliver_pw");
		String deliver_name = multiReq.getParameter("deliver_name");
		String deliver_section = multiReq.getParameter("deliver_section");
		String deliver_type = multiReq.getParameter("deliver_type");
		String deliver_phone= multiReq.getParameter("deliver_phone");
		String deliver_picture = multiReq.getParameter("deliver_phone");
		
		DeliverVO deliver = new DeliverVO();
		deliver.setDeliver_code(deliver_code);
		deliver.setDeliver_name(deliver_name);
		deliver.setDeliver_phone(deliver_phone);
		deliver.setDeliver_pw(deliver_pw);
		deliver.setDeliver_section(deliver_section);
		deliver.setDeliver_type(deliver_type);
		deliver.setDeliver_picture(deliver_picture);
	
		
		FileItem picture = multiReq.getFileItem("picture");
		if(picture.getSize()>0) { //사진변경
			//저장경로
			String uploadPath = GetUploadPath.getUploadPath("deliver.picture.upload");
						
			//기존 사진이미지 삭제
			String oldPicture = multiReq.getParameter("oldPicture");
			
			File deleteFile = new File(uploadPath,oldPicture);
			if(deleteFile.exists()) {
				deleteFile.delete();
			}
			
			//최근 사진이미지 저장
			List<File> fileList 
			=  FileUploadResolver.fileUpload(multiReq.getFileItems("picture"),uploadPath);
			File saveFile = fileList.get(0);
						
			//최근 사진이미지 파일명 vo에 추가
			deliver.setDeliver_picture(saveFile.getName());
			}else {
			deliver.setDeliver_picture(multiReq.getParameter("oldPicture"));
			}
		
		
		try {
			deliverService.modifyDeliver(deliver);
			
			HttpSession session = request.getSession();			
			DeliverVO loginDeliver = (DeliverVO)session.getAttribute("loginDeliver");
			if(loginDeliver!=null && deliver.getDeliver_code().equals(loginDeliver.getDeliver_code())) {
				DeliverVO targetObj = deliverService.getDeliver(deliver_code);
				session.setAttribute("loginDeliver", targetObj);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return url;
	}

}
