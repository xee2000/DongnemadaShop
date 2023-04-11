package com.command.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.ManagerVO;

public interface ManagerService {

	Map<String, Object> getManagerList(SearchCriteria cri) throws SQLException;
	
	int login(String manager_id, String manager_pw);
	
	List<ManagerVO> getManagerList(String searchType, String keyword) throws SQLException;
	
	ManagerVO getManager(String manager_id) throws SQLException;
	
	void regist(ManagerVO manager) throws SQLException;
	
	void modify(ManagerVO manager) throws SQLException;
	
	void remove(String manager_id) throws SQLException;
	
}
