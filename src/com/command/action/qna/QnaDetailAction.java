package com.command.action.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.QnaVO;
import com.command.service.QnaService;

public class QnaDetailAction implements Action {
	private QnaService qnaService;

	public void setQnaService(QnaService qnaService) {
		this.qnaService = qnaService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/requestQna/qnaDetail.jsp";

		String qna_code = request.getParameter("qna_code");
		String from = request.getParameter("from");

		QnaVO qna = new QnaVO();

		if (from != null && from.equals("list")) {
			qna = qnaService.getQna(qna_code);
			url = "redirect:/qna/detail.do?qnaCode=" + qna_code;
		} else {
			qna = qnaService.getQnaForModify(qna_code);
		}

		request.setAttribute("qna", qna);

		return url;
	}

}
