<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String result = "";
		
		// 변환할 단위 여러개
		String[] units = request.getParameterValues("units");
		// inch, yard, feet, meter
		
		for(int i = 0; i < units.length; i++) {
			String unit = units[i];
			if(unit.equals("inch")) {
				double inch = length * 0.39;
				//result = result + inch + "in";
				result += inch + " in<br>";
			} else if(unit.equals("yard")) {
				double yard = length * 0.010936133;
				result += yard + " yd<br>";
			} else if(unit.equals("feet")) {
				double feet = length * 0.032808399;
				result += feet + " ft<br>";
			} else {
				double meter = length / 100.0;
				result += meter + " m<br>";
			}
		}
		
	%>
	
	<h2> 변환 결과 </h2>
	<h3> <%= length %>cm </h3>
	<hr>
	<h3><%= result %></h3>
	
	
	
	
	
	
</body>
</html>