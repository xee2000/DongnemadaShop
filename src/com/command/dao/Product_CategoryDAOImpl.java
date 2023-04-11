package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.dto.Product_CategoryVO;

public class Product_CategoryDAOImpl implements Product_CategoryDAO{

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

		@Override
	public List<Product_CategoryVO> selectListProductCategorymenu() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<Product_CategoryVO> productcategoryList = null;
		try {
			productcategoryList = session.selectList("Product_Category-Mapper.Product_Category-Mapper");
			return productcategoryList;
		} finally {
			session.close();
		}

	}

}
