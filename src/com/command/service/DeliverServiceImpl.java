package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.DeliverDAO;
import com.command.dto.DeliverVO;
import com.command.dto.Ship_InfoVO;

public class DeliverServiceImpl implements DeliverService {
	
	private DeliverDAO deliverDAO;
	public void setDeliverDAO(DeliverDAO deliverDAO) {
		this.deliverDAO = deliverDAO;
	}

	@Override
	public int login(String deliver_code, String deliver_pw) {
		//0:성공 1:아이디불일치 2:비밀번호 불일치
		int result = 0;
		try {
			DeliverVO deliver = deliverDAO.deliverByCode(deliver_code);
			if(deliver!=null) {
				if(!deliver.getDeliver_pw().equals(deliver_pw)) { //비밀번호 불일치
					result=2;
				}
			} else { //아이디 불일치
				result =1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Map<String, Object> getChargeList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<Ship_InfoVO> chargeList = deliverDAO.searchDeliverChargeList(cri);
		dataMap.put("chargeList", chargeList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(deliverDAO.searchDeliverChargeListCount(cri));
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public DeliverVO getDeliver(String deliver_code) throws SQLException {
		DeliverVO deliver = deliverDAO.deliverByCode(deliver_code);
		return deliver;
	}

	@Override
	public void registDeliver(DeliverVO deliver) throws SQLException {
		deliverDAO.insertDeliver(deliver);
	}

	@Override
	public void modifyDeliver(DeliverVO deliver) throws SQLException {
		deliverDAO.updateDeliver(deliver);
	}

	@Override
	public void removeDeliver(String deliver_code) throws SQLException {
		deliverDAO.deleteDeliver(deliver_code);
	}

	@Override
	public List<Ship_InfoVO> getChargeList(String searchType, String keyword) throws SQLException {
		List<Ship_InfoVO> chargeList = deliverDAO.searchDeliverChargeList(searchType, keyword);
		return chargeList;
	}

}
