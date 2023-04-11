package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.MemberDAO;
import com.command.dto.MemberVO;

public class MemberServiceImpl implements MemberService{

	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public Map<String, Object> getMemberList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<MemberVO> memberList = memberDAO.selectSearchMemberList(cri);
		dataMap.put("memberList", memberList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectSearchMemberListCount(cri));
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}
	
	
		
	@Override
	public int memberlogin(String member_id, String member_pw) {
		// 0:성공 1:아이디불일치 2:패스워드불일치
		int result = 0;
		try {
			MemberVO member = memberDAO.selectMemberById(member_id);
			if (member != null) {
				if (!member.getMember_pw().equals(member_pw)) {// 패스워드 불일치
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
	public List<MemberVO> getMemberList(String searchType, String keyword) throws SQLException {
		List<MemberVO> memberList = memberDAO.selectSearchMemberList(searchType, keyword);
		return memberList;
	}

	@Override
	public MemberVO getMember(String member_id) throws SQLException {
		MemberVO member = memberDAO.selectMemberById(member_id);
		return member;
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		memberDAO.insertMember(member);
		
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		memberDAO.updateMember(member);
		
	}

	@Override
	public void remove(String member_id) throws SQLException {
		memberDAO.deleteMember(member_id);
	}




}
