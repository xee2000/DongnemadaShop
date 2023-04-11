package com.command.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.command.dto.ShopVO;

public class ShopDAOImpl implements ShopDAO{
	
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
		
	@Override
	public ShopVO selectByShop_Id(String shop_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		ShopVO shop = null;
		try {
			shop = session.selectOne("Shop-Mapper.selectByShop_Id", shop_id);
			return shop;
		} finally {
			session.close();
		}


}
}
