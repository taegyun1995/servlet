package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09Controller extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		out.println("<html> <head> <title> 이력 </title> </head>");
		out.println("<body>");
		
		out.println("<h1>" + name + "님 지원이 완료 되었습니다. </h1>");
		out.println("<hr>");
		out.println("지원 내용");
		out.println("<br>");
		out.println(content);
		
		out.println("</body> </html>");
	}
}