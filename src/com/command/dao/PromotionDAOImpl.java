package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.PromotionVO;

public class PromotionDAOImpl implements PromotionDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<PromotionVO> selectSearchPromotionList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		try {

			List<PromotionVO> promotionList = session.selectList("Promotion-Mapper.selectSearchPromotionList", dataParam);

			return promotionList;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectSearchPromotionListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Promotion-Mapper.selectSearchPromotionListCount", cri);
			return count;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public PromotionVO selectPromotionByPromotionCode(String promotionCode) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			PromotionVO promotion = session.selectOne("Promotion-Mapper.selectPromotionByPromotionCode", promotionCode);

			return promotion;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void increaseViewCount(String promotionCode) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.increaseViewCount", promotionCode);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public String selectPromotionSequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			String seq_num = session.selectOne("Promotion-Mapper.selectPromotionSequenceNextValue");
			return seq_num;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertPromotion(PromotionVO promotion) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Promotion-Mapper.insertPromotion", promotion);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void updatePromotion(PromotionVO promotion) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.updateNotice", promotion);
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public void deletePromotion(String promotionCode) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notice-Mapper.deleteNotice", promotionCode);
		} finally {
			if (session != null)
				session.close();
		}

	}

}
