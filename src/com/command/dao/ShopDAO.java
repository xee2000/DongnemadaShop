package com.command.dao;

import java.sql.SQLException;

import com.command.dto.ShopVO;

public interface ShopDAO {
	
	ShopVO selectByShop_Id(String shop_id)throws SQLException;
	
	
}
