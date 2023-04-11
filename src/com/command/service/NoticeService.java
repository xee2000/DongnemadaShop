package com.command.service;

import java.sql.SQLException;
import java.util.Map;

import com.command.SearchCriteria;
import com.command.dto.NoticeVO;

public interface NoticeService {

	// 목록조회
	Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException;

	// 상세보기
	NoticeVO getNotice(String notice_code) throws SQLException;

	// 수정화면 상세
	NoticeVO getNoticeForModify(String notice_code) throws SQLException;

	// 등록
	void regist(NoticeVO notice) throws SQLException;

	// 수정
	void modify(NoticeVO notice) throws SQLException;

	// 삭제
	void remove(String notice_code) throws SQLException;

}
