package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		String formatDate2 = new SimpleDateFormat("hh시 mm분 ss초").format(now);
		
		out.println("현재 시간은 " + formatDate2 + "입니다.");
	}
}
