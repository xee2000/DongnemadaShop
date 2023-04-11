package com.command.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.controller.HandlerMapper;

public class DispatcherServlet extends HttpServlet {

	private HandlerMapper handlerMapper;

	@Override
	public void init(ServletConfig config) throws ServletException {
		String initUrl = config.getInitParameter("initUrl");
		initUrl = initUrl.replace(".properties", "");
		try {
			handlerMapper = new HandlerMapper(initUrl);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestPro(request, response);
	}

	private void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 사용자 URI 검출
		String command = request.getRequestURI(); // contextPath 포함.
		System.out.println(command);
		if (command.indexOf(request.getContextPath()) == 0) { // contextPath 삭제
			command = command.substring(request.getContextPath().length());
		}
		
		
		
		Action action = null;
		String view = null;

		if (handlerMapper != null) {
			action = handlerMapper.getAction(command);
			if (action != null) {
				try {
					view = action.execute(request, response);
					if (view == null) {
						return;
					}

					if (view.contains("redirect:")) {
						view = request.getContextPath() + view.replace("redirect:", "");
						response.sendRedirect(view);
					} else {
						request.getRequestDispatcher(view).forward(request, response);
					}

				} catch (Exception e) {
					e.printStackTrace();
					response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
				}
			} else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
		} else {
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}

}
