package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.QnaVO;

public class QnaDAOImpl implements QnaDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<QnaVO> selectSearchQnaList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		try {

			List<QnaVO> boardList = session.selectList("Qna-Mapper.selectSearchQnaList", dataParam);

			return boardList;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public QnaVO selectQnaByQnaCode(String qna_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			QnaVO qna = session.selectOne("Qna-Mapper.selectQnaByQnaCode", qna_code);

			return qna;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertQna(QnaVO qna) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Qna-Mapper.insertQna", qna);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void updateQna(QnaVO qna) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Qna-Mapper.updateQna", qna);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void deleteQna(String qna_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Qna-Mapper.deleteBoard", qna_code);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public int selectSearchQnaListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Qna-Mapper.selectSearchQnaListCount", cri);
			return count;
		} finally {
			if (session != null)
				session.close();
		}
	}

}
