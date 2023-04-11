package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.CartVO;
import com.command.dto.MemberVO;

public interface MemberDAO {
	List<MemberVO> selectSearchMemberList(SearchCriteria cri) throws SQLException;
	
	int selectSearchMemberListCount(SearchCriteria cri) throws SQLException;
	
	//회원정보
	MemberVO selectMemberById(String member_id) throws SQLException;
	
	//회원리스트
	List<MemberVO> selectSearchMemberList(String searchType, String keyword) throws SQLException;
	
	//회원입력
	void insertMember(MemberVO member) throws SQLException;
	
	//회원수정
	void updateMember(MemberVO member) throws SQLException;

	//회원삭제
	void deleteMember(String member_id) throws SQLException;
	
	

}
