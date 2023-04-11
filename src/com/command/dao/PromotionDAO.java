package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.PromotionVO;

public interface PromotionDAO {

	List<PromotionVO> selectSearchPromotionList(SearchCriteria cri) throws SQLException;

	int selectSearchPromotionListCount(SearchCriteria cri) throws SQLException;

	PromotionVO selectPromotionByPromotionCode(String promotionCode) throws SQLException;

	// viewcnt 증가
	void increaseViewCount(String promotionCode) throws SQLException;

	// Notice_seq.nextval 가져오기
	String selectPromotionSequenceNextValue() throws SQLException;

	void insertPromotion(PromotionVO promotion) throws SQLException;

	void updatePromotion(PromotionVO promotion) throws SQLException;

	void deletePromotion(String promotionCode) throws SQLException;

}
