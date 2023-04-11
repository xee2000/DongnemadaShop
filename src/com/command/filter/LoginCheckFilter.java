package com.command.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.command.dto.ManagerVO;
import com.command.dto.MemberVO;
import com.command.dto.ShopVO;

public class LoginCheckFilter implements Filter {

	private List<String> exURLs = new ArrayList<String>();

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;

		String reqUrls = httpReq.getRequestURI().substring(httpReq.getContextPath().length());
		boolean result = false;

		// root url인 경우 true
		result = result || reqUrls.length() <= 1;

		// .do로 끝나지 않는 경우 true
		result = result || (reqUrls.lastIndexOf(".do") == reqUrls.length() - 3 ? false : true);

		// 제외시킬 url에 포함되는 경우 true
		for (String exURL : exURLs) {
			result = result || reqUrls.equals(exURL);
		}

		if (result) {
			chain.doFilter(request, response);
			return;
		}

		// member login check
		HttpSession session = httpReq.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		// login 확인
		if (loginUser == null) { // 비로그인 상태
			String returnUrl = "/WEB-INF/views/common/login_check.jsp";
			httpReq.getRequestDispatcher(returnUrl).forward(request, response);
		} else {
			chain.doFilter(request, response);
		}
		ManagerVO loginManager = (ManagerVO) session.getAttribute("loginManager");
		// login 확인
		if (loginManager == null) { // 비로그인 상태
			String returnUrl = "/WEB-INF/views/common/login_check.jsp";
			httpReq.getRequestDispatcher(returnUrl).forward(request, response);
		} else {
			chain.doFilter(request, response);
		}
		ShopVO loginshop = (ShopVO) session.getAttribute("loginshop");
		// login 확인
		if (loginshop == null) { // 비로그인 상태
			String returnUrl = "/WEB-INF/views/common/login_check.jsp";
			httpReq.getRequestDispatcher(returnUrl).forward(request, response);
		} else {
			chain.doFilter(request, response);
		}

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		String excludeURLNames = fConfig.getInitParameter("exclude");

		StringTokenizer st = new StringTokenizer(excludeURLNames, ",");

		while (st.hasMoreTokens()) {
			exURLs.add(st.nextToken().trim());
		}

	}

}
