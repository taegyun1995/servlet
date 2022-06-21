package com.taegyun.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// text/css MIM - 문서의 규격을 알려주는 문서의 표준 
		response.setContentType("text/plain");
		// 캐릭터셋, 인코딩
		response.setCharacterEncoding("utf-8");
		
		// 현재 날짜와 시간을 보여주는 페이지
		Date now = new Date();
		
		PrintWriter out = response.getWriter();
		out.println(now);
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(now);
		out.println(dateString);
		
	}	
}
