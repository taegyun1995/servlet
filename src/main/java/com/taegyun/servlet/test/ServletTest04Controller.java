package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Test04")
public class ServletTest04Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest reqeuse, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		
			out.println("<html> <head> <title>리스트 출력</title> </head>");
			
			out.println("<body> <ul>");
			
			for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + " 번째 리스트 </li>");
			}
			
			out.println("</ul> </body> </html>");
		
	}
}
