/*
 * package com.command.action.deliver;
 * 
 * import java.sql.SQLException; import java.util.Map;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.command.SearchCriteria; import com.command.action.Action; import
 * com.command.service.DeliverService;
 * 
 * public class DeliverListAction implements Action {
 * 
 * private DeliverService deliverService; public void
 * setDeliverService(DeliverService deliverService) { this.deliverService =
 * deliverService; }
 * 
 * @Override public String execute(HttpServletRequest request,
 * HttpServletResponse response) throws Exception { String
 * url="/WEB-INF/views/deliver/list.jsp";
 * 
 * String searchType = request.getParameter("searchType"); String keyword =
 * request.getParameter("keyword"); String perPageNumParam =
 * request.getParameter("perPageNum"); String
 * pageParam=request.getParameter("page");
 * 
 * if(perPageNumParam==null || perPageNumParam.isEmpty())perPageNumParam="10";
 * if(pageParam==null || pageParam.isEmpty())pageParam="1"; if(searchType==null)
 * searchType=""; if(keyword==null) keyword="";
 * 
 * 
 * SearchCriteria cri = new SearchCriteria(); cri.setPage(pageParam);
 * cri.setPerPageNum(perPageNumParam); cri.setSearchType(searchType);
 * cri.setKeyword(keyword);
 * 
 * 
 * try { //Map<String,Object> dataMap = deliverService.getDeliver(cri); //배송사원
 * 조회 리스트 안만들었음 request.setAttribute("dataMap", dataMap); return url;
 * 
 * } catch (SQLException e) { e.printStackTrace(); throw e; }
 * 
 * }
 * 
 * }
 */