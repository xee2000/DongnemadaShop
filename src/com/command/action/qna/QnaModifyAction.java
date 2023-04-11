package com.command.action.qna;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.QnaVO;
import com.command.service.QnaService;

public class QnaModifyAction implements Action {

	private QnaService qnaService;

	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/requestQna/qnaDetail.do";

		String qna_code = request.getParameter("qna_code");

		String qna_title = request.getParameter("qna_title");
		String qna_content = request.getParameter("qna_content");

		QnaVO qna = new QnaVO();
		qna.setQna_content(qna_content);
		qna.setQna_code(qna_code);
		qna.setQna_title(qna_title);

		url += "?qna_code=" + qna_code;
		try {
			qnaService.modify(qna);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return url;
	}

}
