<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
</head>
<body>
	<form method="get" action="/jsp/test07_1.jsp">
	<div class="container">
		<h1>메뉴검색</h1>
		<input type="text" class="form-control" name="menu">
		<label><input type="checkbox" name="filter" value="true">4점 이하 제외</label>
		<br>
		<input type="submit" value="검색">
	</div>
	</form>
</body>
</html>