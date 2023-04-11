package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.InquiryVO;

public interface InquiryDAO {
	
	List<InquiryVO> selectSearchInquiryList(SearchCriteria cri) throws SQLException;

	int selectSearchInquiryListCount(SearchCriteria cri) throws SQLException;

	InquiryVO selectInquiryByInquiryCode(String inquiry_code) throws SQLException;

	void insertInquiry(InquiryVO inquiry) throws SQLException;

	void updateInquiry(InquiryVO inquiry) throws SQLException;

	void deleteInquiry(String inquiry_code) throws SQLException;

}
