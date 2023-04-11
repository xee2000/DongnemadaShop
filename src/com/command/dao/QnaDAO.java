package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.QnaVO;

public interface QnaDAO {

	List<QnaVO> selectSearchQnaList(SearchCriteria cri) throws SQLException;
	
	int selectSearchQnaListCount(SearchCriteria cri) throws SQLException;

	QnaVO selectQnaByQnaCode(String qna_code) throws SQLException;

	void insertQna(QnaVO qna) throws SQLException;

	void updateQna(QnaVO qna) throws SQLException;

	void deleteQna(String qna_code) throws SQLException;

}
