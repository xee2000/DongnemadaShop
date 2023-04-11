package com.command.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.SearchCriteria;
import com.command.dto.CartVO;
import com.command.dto.ProductVO;

public class MemberproductDAOImpl implements MemberproductDAO{
	
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	@Override
	public List<ProductVO> selectProductList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);
		List<ProductVO> productList =
			  session.selectList("Member-Mapper.selectProductList", cri,rowBounds );
			return productList;
		} finally {
			session.close();
		}

	}

	@Override
	public List<ProductVO> selectSearchProductListMart(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);
		List<ProductVO> productList =
			  session.selectList("Member-Mapper.selectSearchProductListMart", cri,rowBounds );
			return productList;
		} finally {
			session.close();
		}
	}

	@Override
	public List<ProductVO> selectSearchProductListStore(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();

			RowBounds rowBounds = new RowBounds(offset, limit);
		List<ProductVO> productList =
			  session.selectList("Member-Mapper.selectSearchProductListStore", cri,rowBounds );
			return productList;
		} finally {
			session.close();
		}
	}

	@Override
	public int selectSearchProductListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
		int count =
			  session.selectOne("Member-Mapper.selectSearchProductListCount", cri);
			return count;
		} finally {
			session.close();
		}
	}


	@Override
	public List<ProductVO> selectProductList(String searchType, String keyword) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			Map<String, String> paramMap = new HashMap<String, String>();
			paramMap.put("searchType", searchType);
			paramMap.put("keyword", keyword);
			List<ProductVO> productList = null;
			productList = session.selectList("Member-Mapper.selectProductList", paramMap);
			return productList;
		} finally {
			session.close();
		}

	}
	
	@Override
	public String selectCartnumber() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			String cartnumber = session.selectOne("Member-Mapper.selectCartnumber");
			return cartnumber;
		} finally {
			session.close();
		}
	}


	@Override
	public void insertcart(CartVO cart) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
		session.selectOne("Member-Mapper.insertcart",cart);
		} finally {
			session.close();
		}
	}
	
	
}
