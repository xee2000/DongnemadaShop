package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount", cri);
			return count;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		try {

			List<NoticeVO> notice_list = session.selectList("Notice-Mapper.selectSearchNoticeList", dataParam);

			return notice_list;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public NoticeVO selectNoticeByNoticeCode(String notice_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeByNoticeCode", notice_code);
			return notice;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void increaseViewCount(String notice_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.increaseViewCount", notice_code);
		} finally {
			if (session != null)
				session.close();
		}

	}


	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.insertNotice", notice);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.updateNotice", notice);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void deleteNotice(String notice_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.deleteNotice", notice_code);
		} finally {
			if (session != null)
				session.close();
		}

	}

}
