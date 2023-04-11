package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.DeliverVO;
import com.command.dto.Ship_InfoVO;

public interface DeliverDAO {
	
	//배차 리스트
	List<Ship_InfoVO> searchDeliverChargeList(SearchCriteria cri) throws SQLException;
	
	List<Ship_InfoVO> searchDeliverChargeList(String searchType, String keyword);
	
	//int invoice
	int searchDeliverChargeListCount(SearchCriteria cri) throws SQLException;
	
	//배송기사 등록
	void insertDeliver(DeliverVO deliver) throws SQLException;
	//배송기사 상세보기 = 정보조회
	DeliverVO deliverByCode(String deliver_code) throws SQLException;
	//배송기사 정보 변경
	void updateDeliver(DeliverVO deliver) throws SQLException;
	//배송기사 삭제
	void deleteDeliver(String deliver_code) throws SQLException;
	
	
	//배송현황 업데이트
	
}
