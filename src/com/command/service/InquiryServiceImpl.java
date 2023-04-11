package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.InquiryDAO;
import com.command.dto.InquiryVO;

public class InquiryServiceImpl implements InquiryService {

	private InquiryDAO inquiryDAO;

	public void setInquiryDAO(InquiryDAO inquiryDAO) {
		this.inquiryDAO = inquiryDAO;
	}

	@Override
	public Map<String, Object> getInquiryList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<InquiryVO> inquiryList = inquiryDAO.selectSearchInquiryList(cri);
		//전체 board개수
		int totalCount = inquiryDAO.selectSearchInquiryListCount(cri);
		
		//PageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("inquiryList", inquiryList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public InquiryVO getInquiry(String inquiry_code) throws SQLException {
		InquiryVO notice = inquiryDAO.selectInquiryByInquiryCode(inquiry_code);
		return notice;
	}

	@Override
	public InquiryVO getInquiryForModify(String inquiry_code) throws SQLException {
		InquiryVO notice = inquiryDAO.selectInquiryByInquiryCode(inquiry_code);
		return notice;
	}

	@Override
	public void regist(InquiryVO inquiry) throws SQLException {
		inquiryDAO.insertInquiry(inquiry);

	}

	@Override
	public void modify(InquiryVO inquiry) throws SQLException {
		inquiryDAO.updateInquiry(inquiry);

	}

	@Override
	public void remove(String inquiry_code) throws SQLException {
		inquiryDAO.deleteInquiry(inquiry_code);

	}

}
