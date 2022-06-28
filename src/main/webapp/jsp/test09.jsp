<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>기념일 계산</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<div class="container">
	<div class="display-4">
		<h1>오늘부터 1일</h1>
	<% for(int i = 1; i <= 10; i++) { %>
	
		<% Calendar today = Calendar.getInstance();
			
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy년M월d일"); 
		String date = simpleDate.format(today.getTime());
				
		today.add(Calendar.DATE, (i * 100) - 1);
			
		date = simpleDate.format(today.getTime());
		%>
		
		<%= i %>00일 : <span class="text-danger"><%= date %></span> <br>
		
	<% } %>
	</div>
	</div>
	
</body>
</html>