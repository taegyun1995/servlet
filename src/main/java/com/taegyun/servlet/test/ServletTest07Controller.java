package com.taegyun.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		
		int amount = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html> <head> <title> 배달 </title> </head> ");
		out.println("<body>");
		
		String str = address.contains("서울시") ? address + "로 배달 준비중" : "배달 불가 지역입니다";
		out.println(str);
		
//		if(address.contains("서울시")) {
//			out.println("<h3>" + address + "로 배달 준비중</h3>");
//		} else {
//			out.println("<h2>배달 불가 지역입니다</h2>");
//		}
		
		out.println("<hr>");
		if(card.equals("신한카드")) {
			out.println("<h2>결제 불가 카드 입니다.</h2>");
		} else {
			out.println("결제금액 : " + amount + "원");
		}
		out.println("</body> </html>");
	
	}
}
