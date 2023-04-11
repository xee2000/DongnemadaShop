package com.command.listener;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.command.context.ApplicationContextLoader;



public class ApplicationContextLoaderListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {

	}

	public void contextInitialized(ServletContextEvent ctxEvent) {
		ServletContext ctx = ctxEvent.getServletContext();
		String beanConfigXml = ctx.getInitParameter("contextConfigLocation");

//		System.out.println("변경전 : " + beanConfigXml);

		beanConfigXml = ctx.getRealPath("/WEB-INF/classes/")
				+ beanConfigXml.replace("classpath:", "").replace("/", File.separator);
//		System.out.println("변경후 : " + beanConfigXml);

		try {
			ApplicationContextLoader.build(beanConfigXml);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
