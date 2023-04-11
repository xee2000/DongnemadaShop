package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.dto.Product_CategoryVO;

public interface Product_CategoryDAO {
	
	
	List<Product_CategoryVO> selectListProductCategorymenu()throws SQLException;
}
