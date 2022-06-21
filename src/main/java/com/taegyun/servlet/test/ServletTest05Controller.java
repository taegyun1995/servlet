package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("num"));
		
		out.println("<html> <head> <title> 구구단 </title> </head> <body>");
		
		out.println("<ul>");
		
		for(int i = 1; i < 10; i++) {
			out.println("<li>" + number + " * " + i + " = " + (number * i) + "</li>");
		}
		
		out.println("</ul> </body> </html>");
		
	}

}
