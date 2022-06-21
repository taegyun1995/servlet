package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date(); // 현재 시간을 나타내는 클래스
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		String dateString = formatter.format(now);
		
		out.println("오늘의 날짜는 " + dateString + "입니다.");
	}
}