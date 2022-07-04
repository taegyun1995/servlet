package com.taegyun.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taegyun.common.MysqlService;

@WebServlet("/db/test02/insert")
public class ServletDBTest02InsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		String query = "INSERT INTO `url`\n"
					+ "(`name`, `url`, `createdAt`, `updatedAt`)\n"
					+ "VALUE\n"
					+ "('" + name + "', '" + url + "', now(), now());";
		
		mysqlService.update(query);
		
		try {
			response.sendRedirect("/db/test02/test02.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
