package com.command.action.qna;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.QnaVO;
import com.command.service.QnaService;

public class QnaRegistAction implements Action {

	private QnaService qnaService;

	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/qnaList.jsp";

		QnaVO qna = new QnaVO();

		qna.setQna_content("qna_content");
		qna.setQna_title("qna_title");

		try {
			qnaService.regist(qna);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("qna", qna);
		return url;
	}

}
