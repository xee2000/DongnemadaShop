package com.command.service;

import java.sql.SQLException;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.PromotionVO;

public interface PromotionService {

	// 목록조회
	Map<String, Object> getInquiryList(SearchCriteria cri) throws SQLException;

	// 상세보기
	PromotionVO getInquiry(String promotionCode) throws SQLException;

	// 수정화면 상세
	PromotionVO getInquiryForModify(String promotionCode) throws SQLException;

	// 등록
	void regist(PromotionVO promotion) throws SQLException;

	// 수정
	void modify(PromotionVO promotion) throws SQLException;

	// 삭제
	void remove(String promotionCode) throws SQLException;

}
