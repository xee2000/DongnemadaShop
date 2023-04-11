package com.command.action.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.QnaVO;
import com.command.service.QnaService;

public class QnaModifyFormAction implements Action {

	private QnaService qnaService;

	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/qnaModify.jsp";

		String qna_code = request.getParameter("qna_code");

		QnaVO qna = new QnaVO();

		qna = qnaService.getQnaForModify(qna_code);

		request.setAttribute("qna", qna);

		return url;
	}

}
