package com.command.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.command.PageMaker;
import com.command.SearchCriteria;
import com.command.dao.NoticeDAO;
import com.command.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<NoticeVO> notice_list = noticeDAO.selectSearchNoticeList(cri);
		//전체 board개수
		int totalCount = noticeDAO.selectSearchNoticeListCount(cri);
		
		//PageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("notice_list", notice_list);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public NoticeVO getNotice(String notice_code) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNoticeCode(notice_code);
		return notice;
	}

	@Override
	public NoticeVO getNoticeForModify(String notice_code) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNoticeCode(notice_code);
		return notice;
	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
		noticeDAO.insertNotice(notice);

	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
	}

	@Override
	public void remove(String notice_code) throws SQLException {
		noticeDAO.deleteNotice(notice_code);

	}

}
