<%@page import="org.mariadb.jdbc.export.Prepare"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("utf-8");
    
    String number = request.getParameter("number");
    String name = request.getParameter("name");
    String grade = request.getParameter("grade");
    String select = request.getParameter("select");
    
    Class.forName("org.mariadb.jdbc.Driver");
    
    String url = "jdbc:mariadb://localhost:3307/jspdb";
    String user = "JSPDB";
    String pwd = "JSP";

    
    try{
    	Connection con = DriverManager.getConnection(url, user, pwd);
    String sql = "INSERT INTO ex01 (STU_NUM, NAME, GRADE, SUBJECT) VALUES (?, ?, ?, ?)";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, number);
    pstmt.setString(2, name);
    pstmt.setString(3, grade);
    pstmt.setString(4, select);
    
    int i = pstmt.executeUpdate();
    if(i == 1){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert OK</title>
<style>
section {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 1px solid black;
	padding: 30px 70px;
}

h1 {
	text-align: center;
}

#back-btn {
	display: block;
	cursor: pointer;
	margin-top: 20px;
	width: 100%;
	padding: 5px 0;
}
</style>
</head>
<body>
	<section>
		<h2>신상정보 입력 완료!</h2>
		<p>
			학번 :
			<%=number %></p>
		<p>
			이름 :
			<%=name%></p>
		<p>
			학년 :
			<%=grade%></p>
		<p>
			선택과목 :
			<%=select%></p>
		<input id="back-btn" type="button" value="리스트로"
			onclick="location.href='select.jsp'">
	</section>

</body>
</html>
<%
}
} catch(SQLException e){
	e.printStackTrace();
}
%>