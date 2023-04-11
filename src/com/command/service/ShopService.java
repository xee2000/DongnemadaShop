package com.command.service;

import java.sql.SQLException;

import com.command.dto.ShopVO;

public interface ShopService {

	ShopVO getShop(String shop_id) throws SQLException;
	int shoplogin(String shop_id, String shop_pw) throws SQLException;
	 


}



