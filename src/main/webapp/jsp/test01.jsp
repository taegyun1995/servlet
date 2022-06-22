<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<h2>1. 점수들의 평균 구하기</h2>
	<h3>스크립틀릿 문법을 사용해서 주어진 점수들의 평균을 구하세요</h3>
	<%	
		int sum = 0;
		double avg = 0;
		int[] scores = {80, 90, 100, 95, 80};
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		avg = sum / scores.length;
	%>
	점수 평균은 <%= avg %> 입니다.
	
	<h2>2. 채점 결과</h2>
	<h3>아래 채점표로 시험점수가 몇점인지 구하세요.</h3>
	<%
		int score = 0;
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		for(String answer : scoreList){
			if(answer.equals("O")){
				score += 10;
			}
		}
	%>
	채점 결과는 <%= score %>점 입니다.
	
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	<h3>jsp의 선언문 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.</h3>
	<h3>만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.</h3>
	<%!
		public int add(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	1에서 50까지의 합은 <%= add(50) %>
	

	<h2>4. 나이 구하기</h2>
	<h3>주어진 생년월일을 가진 사람의 나이를 구하세요.</h3>
	<%
		String birthDay = "20010820";
		int age = Integer.parseInt(birthDay.substring(0, 4));
		age = 2022 - age + 1;
	%>
	<%= birthDay %>의 나이는 <%= age %>살 입니다.	
</body>
</html>