package com.taegyun.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/Ex02")
public class ServletEx02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		// html로 1부터 10까지의 합을 결과를 보여준다.
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.println("<html> <head> <tilte> 합계 </title> </head>");
		out.println("<body> <h2> 합계 : " + sum + " </h2> </body> </html>");
		
	}
}
