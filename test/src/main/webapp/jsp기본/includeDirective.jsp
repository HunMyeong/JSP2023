<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "date표시.jsp" %>
	<br>
	여기는 메인 페이지인 includeDirective.jsp 입니다..!
	<br>
	아래는 pageDirective.jsp입니다. <br>
	<%@ include file = "pageDirective.jsp" %>
	
	<br> 아래는 index.jsp입니다. <br>
	<%@ include file = "index.jsp" %>
	
	<h1>끝!</h1>
	<h3>끝!</h3>
	<h5>끝!</h5>

</body>
</html>