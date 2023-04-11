package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.dto.ProductVO;

public class ProductDAOImpl implements ProductDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<ProductVO> selectProductList(String shop_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<ProductVO> productList = null;
		try {
			productList = session.selectList("Product-Mapper.selectProductList", shop_id);
			return productList;
		} finally {
			session.close();
		}

	}

	@Override
	public int selectProductListCount(String shop_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		int count;
		try {
			count = session.selectOne("Product-Mapper.selectProductListCount", shop_id);
			return count;
		} finally {
			session.close();
		}

	}

	@Override
	public String selectProduct_code() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		String product_code;
		try {
			product_code = session.selectOne("Product-Mapper.selectProduct_code");
			return product_code;
		} finally {
			session.close();
		}

	}

	@Override
	public void updateProduct(ProductVO product) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.selectOne("Product-Mapper.updateProduct", product);
		} finally {
			session.close();
		}

	}

	@Override
	public void insertProduct(ProductVO product) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.selectOne("Product-Mapper.insertProduct", product);
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteProduct(String shop_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.selectOne("Product-Mapper.deleteProduct", shop_id);
		} finally {
			session.close();
		}

	}

	@Override
	public ProductVO selectByCode(String product_code) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			ProductVO product = session.selectOne("Product-Mapper.selectByCode", product_code);
			return product;
		} finally {
			session.close();
		}
	}
}