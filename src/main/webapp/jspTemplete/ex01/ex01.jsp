<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정적 템플릿</title>
</head>
<body>
	<%-- 현재 시간을 알려주는 jsp파일을 불러와서 보여준다. --%>
	<h1>현재 시간은?</h1>
	<%@ include file="Date.jsp" %>
	
	<%= dateString %>


</body>
</html>