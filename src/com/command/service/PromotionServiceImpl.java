package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.PromotionDAO;
import com.command.dto.PromotionVO;

public class PromotionServiceImpl implements PromotionService {

	private PromotionDAO promotionDAO;

	public void setPromotionDAO(PromotionDAO promotionDAO) {
		this.promotionDAO = promotionDAO;
	}

	@Override
	public Map<String, Object> getInquiryList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<PromotionVO> inquiryList = promotionDAO.selectSearchPromotionList(cri);
		// 전체 board개수
		int totalCount = promotionDAO.selectSearchPromotionListCount(cri);

		// PageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("inquiryList", inquiryList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public PromotionVO getInquiry(String promotionCode) throws SQLException {
		PromotionVO notice = promotionDAO.selectPromotionByPromotionCode(promotionCode);
		promotionDAO.increaseViewCount(promotionCode);
		return notice;
	}

	@Override
	public PromotionVO getInquiryForModify(String promotionCode) throws SQLException {
		PromotionVO notice = promotionDAO.selectPromotionByPromotionCode(promotionCode);
		return notice;
	}

	@Override
	public void regist(PromotionVO promotion) throws SQLException {
		String promotionCode = promotionDAO.selectPromotionSequenceNextValue();
		promotion.setPromotion_code(promotionCode);
		promotionDAO.insertPromotion(promotion);

	}

	@Override
	public void modify(PromotionVO promotion) throws SQLException {
		promotionDAO.updatePromotion(promotion);

	}

	@Override
	public void remove(String promotionCode) throws SQLException {
		promotionDAO.deletePromotion(promotionCode);

	}

}
