package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.QnaDAO;
import com.command.dto.QnaVO;

public class QnaServiceImpl implements QnaService {

	private QnaDAO qnaDAO;

	public void setQnaDAO(QnaDAO qnaDAO) {
		this.qnaDAO = qnaDAO;
	}

	@Override
	public Map<String, Object> getQnaList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<QnaVO> boardList = qnaDAO.selectSearchQnaList(cri);
		// 전체 board개수
		int totalCount = qnaDAO.selectSearchQnaListCount(cri);

		// PageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("boardList", boardList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public QnaVO getQna(String qna_code) throws SQLException {
		QnaVO qna = qnaDAO.selectQnaByQnaCode(qna_code);
		return qna;
	}

	@Override
	public QnaVO getQnaForModify(String qna_code) throws SQLException {
		QnaVO qna = qnaDAO.selectQnaByQnaCode(qna_code);
		return qna;
	}

	@Override
	public void regist(QnaVO qna) throws SQLException {
		qnaDAO.insertQna(qna);

	}

	@Override
	public void modify(QnaVO qna) throws SQLException {
		qnaDAO.updateQna(qna);

	}

	@Override
	public void remove(String qna_code) throws SQLException {
		qnaDAO.deleteQna(qna_code);

	}

}
