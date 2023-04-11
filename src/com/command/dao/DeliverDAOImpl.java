package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.DeliverVO;
import com.command.dto.Ship_InfoVO;

public class DeliverDAOImpl implements DeliverDAO {
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<Ship_InfoVO> searchDeliverChargeList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {

			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);

			List<Ship_InfoVO> chargeList 
			= session.selectList("Deliver-Mapper.searchDeliverChargeList", cri, rowBounds);
			return chargeList;
		} finally {
			session.close();
		}

	}
	
	@Override
	public int searchDeliverChargeListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Deliver-Mapper.searchDeliverChargeListCount", cri);
			return count;
		} finally {
			if (session != null)session.close();
		}
	}

	@Override
	public void insertDeliver(DeliverVO deliver) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Deliver-Mapper.insertDeliver", deliver);
		} finally {
			if (session != null)session.close();
		}
	}
		

	@Override
	public DeliverVO deliverByCode(String deliver_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			DeliverVO deliver = session.selectOne("Deliver-Mapper.deliverByCode", deliver_code);
			return deliver;
		} finally {
			if (session != null)session.close();
		}
	}

	@Override
	public void updateDeliver(DeliverVO deliver) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Deliver-Mapper.updateDeliver", deliver);
		} finally {
			if (session != null)session.close();
		}
	}

	@Override
	public void deleteDeliver(String deliver_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Deliver-Mapper.deleteDeliver", deliver_code);
		} finally {
			if (session != null)session.close();
		}
	}

	@Override
	public List<Ship_InfoVO> searchDeliverChargeList(String searchType, String keyword) {
		SqlSession session = sqlSessionFactory.openSession();

		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("searchType", searchType);
		paramMap.put("keyword", keyword);
		List<Ship_InfoVO> chargeList = null;
		try {
			chargeList = session.selectList("Deliver-Mapper.searchDeliverChargeList", paramMap);
		} finally {
			session.close();
		}

		return chargeList;
	}

}
