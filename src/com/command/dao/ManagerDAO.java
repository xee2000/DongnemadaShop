package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.ManagerVO;

public interface ManagerDAO {

	List<ManagerVO> selectSearchManagerList(SearchCriteria cri) throws SQLException;

	int selectSearchManagerListCount(SearchCriteria cri) throws SQLException;

	ManagerVO selectManagerById(String manager_id) throws SQLException;

	List<ManagerVO> selectManagerList(String searchType, String keyword) throws SQLException;

	void insertManager(ManagerVO manager) throws SQLException;

	void updateManager(ManagerVO manager) throws SQLException;

	void deleteManager(String manager_id) throws SQLException;

}
