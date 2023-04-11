package com.command.action.summernote;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.utils.FileUploadResolver;
import com.command.utils.GetUploadPath;
import com.command.utils.MulipartHttpServletRequestParser;

public class SummernoteUploadImgAction implements Action {

	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;

		// 1. request 변환
		MulipartHttpServletRequestParser multi = new MulipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
				MAX_FILE_SIZE, MAX_REQUEST_SIZE);
		// 2. 저장할 경로
		String uploadPath = GetUploadPath.getUploadPath("summernote.img");
		// 3. 업로드된 이미지 저장
		List<File> fileList = FileUploadResolver.fileUpload(multi.getFileItems("file"), uploadPath);
		// 4. 저장한 파일 보내기
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		File file = fileList.get(0);
		out.print(request.getContextPath() + "/getImg.do?fileName=" + file.getName());

		return url;
	}

}
