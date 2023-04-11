package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.ManagerVO;

public class ManagerDAOImpl implements ManagerDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public ManagerVO selectManagerById(String manager_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		ManagerVO member = null;
		try {
			member = session.selectOne("Manager-Mapper.selectManagerById", manager_id);
		} finally {
			session.close();
		}

		return member;
	}

	@Override
	public List<ManagerVO> selectManagerList(String searchType, String keyword) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("searchType", searchType);
		paramMap.put("keyword", keyword);
		List<ManagerVO> managerList = null;
		try {
			managerList = session.selectList("Manager-Mapper.selectSearchManagerList", paramMap);
		} finally {
			session.close();
		}

		return managerList;
	}

	@Override
	public void insertManager(ManagerVO manager) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Manager-Mapper.insertManager", manager);
		} finally {
			session.close();
		}

	}

	@Override
	public void updateManager(ManagerVO manager) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Manager-Mapper.updateMember", manager);
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteManager(String manager_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Manager-Mapper.deleteManager", manager_id);
		} finally {
			session.close();
		}

	}

	@Override
	public List<ManagerVO> selectSearchManagerList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {

			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);

			List<ManagerVO> managerList = session.selectList("Manager-Mapper.selectSearchManagerList", cri, rowBounds);

			return managerList;

		} finally {
			session.close();
		}
	}

	@Override
	public int selectSearchManagerListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Manager-Mapper.selectSearchManagerListCount", cri);
			return count;
		} finally {
			session.close();
		}
	}

}
