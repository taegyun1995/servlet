<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<%@ include file="data.jsp" %>
<form method="get" action="/jspTemplete/test02/test02_2.jsp">
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		
		<section class="contents">
			<h3 class="pt-3"> 곡 정보 </h3> 
			<div class="artist d-flex border border-success p-3">
			<% for(Map<String,Object> info : musicList) { 
			 
				int musicTime = (Integer)info.get("time");
				int minute = musicTime / 60;
				int second = musicTime % 60;
				
				int id = (int)info.get("id");
				int idInfo = Integer.parseInt(request.getParameter("id"));
				
				String search = request.getParameter("search");
				String title = (String)info.get("title");
				
				if((search != null && title.equals(title))
					|| (search == null && id == idInfo)) { {
					
					// title이 전달되면, id는 없다.
					// id가 있으면, title이 없다.
					  %>
				 			<div class="d-flex">
					 			<div>
					 				<img width="200" src="<%= info.get("thumbnail") %>">
					 			</div>
					 			<div class="ml-4">
					 				<h1> <%= info.get("title") %> </h1>
					 				<div class="singer text-success mt-3"> <%= info.get("singer") %> </div> <br>
					 				<div class="music-info text-secondary d-flex">
				 						<div>
						 					<div>앨범</div> 
						 					<div>재생시간</div> 
						 					<div>작곡가 </div> 
						 					<div>작사가</div>
				 						</div>
					 					<div class="ml-4">
						 					<div><%= info.get("album") %></div>
						 					<div class="d-flex">
						 						<div class="mr-1"><%= minute %></div>
						 						<div> : </div>
						 						<div class="ml-1"><%= second %></div>
						 					</div>
						 					<div><%= info.get("composer") %></div>
						 					<div><%= info.get("lyricist") %></div>
					 					</div>
					 				</div>
					 			</div>
				 			</div>
		 			<% } %>
		 			<% } %>
		 		<% } %> 
				</div>
			
			<article>
			<h3 class="mt-5">가사</h3>
			<hr>
			<div class="pb-5">
			가사 정보 없음
			</div>
			<hr>
			</article>
		</section>
		
		<jsp:include page="footer.jsp" />
	</div>
</form>
</body>
</html>