<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "copyright"
    trimDirectiveWhitespaces="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>반가워요!</h1>
	<hr>
	<% 
		out.println("오늘의 날짜 : " + LocalDate.now() + "<br>");
		out.println("지금의 시간 : " + LocalTime.now() + "<br>");
	%>
	파일 정보 <%=getServletInfo() %>
</body>
</html>