package com.taegyun.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taegyun.common.MysqlService;

@WebServlet("/db/test02/delete")
public class ServletDBTest02DeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		String query = "DELETE FROM `url`\n"
						+ "WHERE `id`=" + id + ";";
		
		mysqlService.update(query);
		
		try {
			response.sendRedirect("/db/test02.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

