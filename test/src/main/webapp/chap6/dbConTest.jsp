<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.*"
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>

<%
	//1. jdbc 드라이버 등록
	Class.forName("org.mariadb.jdbc.Driver");

	//2. DB 연결 정보
	String url = "jdbc:mariadb://localhost:3307/jspdb";
	String user = "JSPDB";
	String password = "JSP";
	
	//3. DB와 커넥션 생성
	Connection con = DriverManager.getConnection(url, user, password);
	
	Statement stmt = con.createStatement();
	
	//4. sql문 실행
	String sql = "SELECT * FROM test";
	
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		out.println(rs.getString("name"));
		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
	}
	rs.close();
	stmt.close();
	con.close();
	
%>






</body>
</html>