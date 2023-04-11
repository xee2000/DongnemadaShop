package com.command.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.MemberVO;


public interface MemberService {
	
	
	Map<String,Object> getMemberList(SearchCriteria cri) throws SQLException;
	
	//로그인 : 성공:0 아이디불일치:1 패스워드불일치:2
	int memberlogin(String member_id, String member_pw);
	
	//회원리스트
	List<MemberVO> getMemberList(String searchType, String keyword) throws SQLException;
	
	//회원상세
	MemberVO getMember(String member_id) throws SQLException;
	
	//회원등록
	void regist(MemberVO member) throws SQLException;
	
	//회원수정
	void modify(MemberVO member) throws SQLException;
	
	//회원삭제
	void remove(String member_id) throws SQLException;
}

