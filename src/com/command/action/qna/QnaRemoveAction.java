package com.command.action.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.service.QnaService;

public class QnaRemoveAction implements Action {

	private QnaService qnaService;

	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/remove_success.jsp";

		String qna_code = request.getParameter("qna_code");

		qnaService.remove(qna_code);

		return url;
	}

}
