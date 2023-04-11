package com.command.service;

import java.sql.SQLException;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.InquiryVO;

public interface InquiryService {

	// 목록조회
	Map<String, Object> getInquiryList(SearchCriteria cri) throws SQLException;

	// 상세보기
	InquiryVO getInquiry(String inquiry_code) throws SQLException;

	// 수정화면 상세
	InquiryVO getInquiryForModify(String inquiry_code) throws SQLException;

	// 등록
	void regist(InquiryVO inquiry) throws SQLException;

	// 수정
	void modify(InquiryVO inquiry) throws SQLException;

	// 삭제
	void remove(String inquiry_code) throws SQLException;

}
