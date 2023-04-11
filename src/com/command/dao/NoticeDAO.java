package com.command.dao;

import java.sql.SQLException;
import java.util.List;

import com.command.SearchCriteria;
import com.command.dto.NoticeVO;

public interface NoticeDAO {
	
	List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException;

	int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException;

	NoticeVO selectNoticeByNoticeCode(String notice_code) throws SQLException;

	// viewcnt 증가
	void increaseViewCount(String notice_code) throws SQLException;

	void insertNotice(NoticeVO Notice) throws SQLException;

	void updateNotice(NoticeVO Notice) throws SQLException;

	void deleteNotice(String notice_code) throws SQLException;

}
