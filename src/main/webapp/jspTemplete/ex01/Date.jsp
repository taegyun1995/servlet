<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date now = new Date();
	
	String dateString = new SimpleDateFormat("hh시 mm분 ss초").format(now);

%>

<div>
	<%= dateString %>
</div>