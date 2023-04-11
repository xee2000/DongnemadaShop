package com.command.service;

import java.sql.SQLException;
import java.util.List;

import com.command.dto.Product_CategoryVO;

public interface Product_CategoryService {

	List<Product_CategoryVO>selectListProductCategorymenu()throws SQLException;
}
