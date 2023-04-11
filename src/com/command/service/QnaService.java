package com.command.service;

import java.sql.SQLException;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.QnaVO;

public interface QnaService {

	// 목록조회
	Map<String, Object> getQnaList(SearchCriteria cri) throws SQLException;

	// 상세보기
	QnaVO getQna(String qna_code) throws SQLException;

	// 수정화면 상세
	QnaVO getQnaForModify(String qna_code) throws SQLException;

	// 등록
	void regist(QnaVO qna) throws SQLException;

	// 수정
	void modify(QnaVO qna) throws SQLException;

	// 삭제
	void remove(String qna_code) throws SQLException;

}
