<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>

<%
	//1. 한글처리
	request.setCharacterEncoding("utf-8");

	
	//2. 데이터를 받아와서 변수에 저장.
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	
	//3. 데이터 베이스 연결
	Class.forName("org.mariadb.jdbc.Driver");

	String url = "jdbc:mariadb://localhost:3307/jspdb";
	String user = "JSPDB";
	String password = "JSP";
	
	try(Connection con = DriverManager.getConnection(url, user, password)){

	//String sql = "insert into test(name, id, pwd) values('" 
	//+ name + "', " + "'" + id + "', " + "'" + pwd + "')";
	
	//SQL문을 placeholder(?)
	//pstmt 객체 생성
	String sql = "insert into test(name, id, pwd) values(?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, id);
	pstmt.setString(3, pwd);
	
	
	//SQL 실행
	int i = pstmt.executeUpdate();
	
	if(i == 1){
		out.println("입력 성공!");
	}
	}catch(Exception e){
		e.printStackTrace();
	}
%>