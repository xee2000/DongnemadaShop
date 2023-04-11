package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.InquiryVO;

public class InquiryDAOImpl implements InquiryDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<InquiryVO> selectSearchInquiryList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		try {

			List<InquiryVO> inquiryLsit = session.selectList("Inquiry-Mapper.selectSearchInquiryList", dataParam);

			return inquiryLsit;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectSearchInquiryListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Inquiry-Mapper.selectSearchInquiryListCount", cri);
			return count;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public InquiryVO selectInquiryByInquiryCode(String inquiry_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			InquiryVO inquiry = session.selectOne("Inquiry-Mapper.selectInquiryByNno", inquiry_code);

			return inquiry;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertInquiry(InquiryVO inquiry) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Inquiry-Mapper.insertInquiry", inquiry);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void updateInquiry(InquiryVO inquiry) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Inquiry-Mapper.updateInquiry", inquiry);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void deleteInquiry(String inquiry_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Inquiry-Mapper.deleteInquiry", inquiry_code);
		} finally {
			if (session != null)
				session.close();
		}

	}

}
