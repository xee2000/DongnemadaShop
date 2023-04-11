package com.command.service;

import java.sql.SQLException;

import com.command.dao.ShopDAO;
import com.command.dto.ShopVO;

public class ShopServiceImpl implements ShopService {

	private ShopDAO shopDAO;

	public void setShopDAO(ShopDAO shopDAO) {
		this.shopDAO = shopDAO;
	}

	/*
	 * @Override public void registShop(ShopVO shop) throws SQLException {
	 * 
	 * shopDAO.insertShop(shop); }
	 * 
	 * @Override public void modifyShop(ShopVO shop) throws SQLException {
	 * 
	 * shopDAO.updateshop(shop); }
	 * 
	 * @Override public void removeShop(String shop_id) throws SQLException {
	 * shopDAO.deleteshop(shop_id); }
	 */

	@Override
	public int shoplogin(String shop_id, String shop_pw) {
		// 0:성공 1:아이디불일치 2:패스워드불일치
		int result = 0;
		try {
			ShopVO shop = shopDAO.selectByShop_Id(shop_id);
			if (shop != null) {
				if (!shop.getShop_pw().equals(shop_pw)) {// 패스워드 불일치
					result = 2;
				} else {
					result = 0;
				}
			} else {// 아이디 불일치
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ShopVO getShop(String shop_id) throws SQLException {
		ShopVO shop = null;
		shop = shopDAO.selectByShop_Id(shop_id);

		return shop;
	}
}
