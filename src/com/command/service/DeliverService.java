package com.command.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.DeliverVO;
import com.command.dto.Ship_InfoVO;

public interface DeliverService {
	
	//로그인 : 성공:0 아이디불일치:1 패스워드불일치:2
	int login(String deliver_code, String deliver_pw);
		
	// 목록조회
	Map<String,Object> getChargeList(SearchCriteria cri) throws SQLException;
		
	//회원상세
	DeliverVO getDeliver(String deliver_code) throws SQLException;
		
	//회원등록
	void registDeliver(DeliverVO deliver) throws SQLException;
		
	//회원수정
	void modifyDeliver(DeliverVO deliver) throws SQLException;
		
	//회원삭제
	void removeDeliver(String deliver_code) throws SQLException;
	
	//이건 뭘까
	List<Ship_InfoVO> getChargeList(String searchType, String keyword) throws SQLException;
	

}
