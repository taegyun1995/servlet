<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜론</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%
	  	Map<String, Object> artistInfo = new HashMap<>();
	    artistInfo.put("name", "아이유");
	    artistInfo.put("debute", 2008);
	    artistInfo.put("agency", "EDAM엔터테인먼트");
	    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
	%>
	
	<div class="container">
	
		<header>
			<div class="d-flex">
				<h1 class="text-success">Melong</h1>
				<input type="text"> <input type="submit" value="검색">
			</div>
		</header>
	
		<nav>
			<ul class="nav">
				<li class="nav-item"> <a href="#" class="nav-link"> 멜롱챠트 </a> </li>
				<li class="nav-item"> <a href="#" class="nav-link"> 최신음악 </a> </li>
				<li class="nav-item"> <a href="#" class="nav-link"> 장르음악 </a> </li>
				<li class="nav-item"> <a href="#" class="nav-link"> 멜롱DJ </a> </li>
				<li class="nav-item"> <a href="#" class="nav-link"> 뮤직어워드 </a> </li>
			</ul>
		</nav>
	
		<section>
			<div class="d-flex">
				<div>
					<img width="200" src="<%= artistInfo.get("photo") %>"> 
				</div>
				
				<div>
					<%= artistInfo.get("name") %> <br>
					<%= artistInfo.get("agency") %> <br>
					<%= artistInfo.get("debute") %> 데뷔
				</div>
				
			</div>
		</section>
		
		<footer>
		
		</footer>
	
	</div>
	
	
	
	
	
	
	
	
	
	
</body>
</html>