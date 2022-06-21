package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test03")
public class ServletTest03Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		String formatNow = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(now);
		
		out.println("<html> <head> <title> 뉴스 기사 </title> </head>");
		
		out.println("<body> <h1> [단독] 고양이가 야옹해 </h1>");
		out.println("기사 입력시간 : " + formatNow + "<hr/> 끝");
		out.println("</body> </html>");
	}
}
