<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String kor = request.getParameter("kor");
    String eng = request.getParameter("eng");
    String math = request.getParameter("math");
    int jum = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math);
    double p = (double)jum/3;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>학생의 점수, 총점, 평균 </h3>
	 국어: <%=kor %> <br>
	 영어: <%=eng %> <br>
	 수학: <%=math %> <br> <br>
	 총점: <%=jum %> <br>
	 평균: <%=String.format("%.2f", p) %>

</body>
</html>