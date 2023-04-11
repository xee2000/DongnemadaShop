package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.ManagerDAO;
import com.command.dto.ManagerVO;

public class ManagerServiceImpl implements ManagerService {
	
	private ManagerDAO managerDAO;

	public void setManagerDAO(ManagerDAO managerDAO) {
		this.managerDAO = managerDAO;
	}

	@Override
	public Map<String, Object> getManagerList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<ManagerVO> managerList = managerDAO.selectSearchManagerList(cri);
		dataMap.put("managerList", managerList);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(managerDAO.selectSearchManagerListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public int login(String manager_id, String manager_pw) {
		// 0:성공 1:아이디불일치 2:패스워드불일치
				int result = 0;
				try {
					ManagerVO manager = managerDAO.selectManagerById(manager_id);
					if (manager != null) {
						if (!manager.getManager_pw().equals(manager_pw)) {// 패스워드 불일치
							result = 2;
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
	public List<ManagerVO> getManagerList(String searchType, String keyword) throws SQLException {
		List<ManagerVO> managerList = managerDAO.selectManagerList(searchType, keyword);
		return managerList;
	}

	@Override
	public ManagerVO getManager(String manager_id) throws SQLException {
		ManagerVO manager = managerDAO.selectManagerById(manager_id);
		return manager;
	}

	@Override
	public void regist(ManagerVO manager) throws SQLException {
		managerDAO.insertManager(manager);
		
	}

	@Override
	public void modify(ManagerVO manager) throws SQLException {
		managerDAO.updateManager(manager);
		
	}

	@Override
	public void remove(String manager_id) throws SQLException {
		managerDAO.deleteManager(manager_id);
		
	}

}
