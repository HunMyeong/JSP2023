<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	request.setCharacterEncoding("utf-8");

String Up_number = request.getParameter("Up_number");
String number = request.getParameter("number");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String select = request.getParameter("select");

	Class.forName("org.mariadb.jdbc.Driver");
	
	String url = "jdbc:mariadb://localhost:3307/jspdb";
	String user = "JSPDB";
	String password = "JSP";
	Connection con = DriverManager.getConnection(url, user, password);
	
	String sql = "update ex01 set stu_num=?, name=?, grade=?, subject=? where stu_num=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, number);
	pstmt.setString(2, name);
	pstmt.setString(3, grade);
	pstmt.setString(4, select);
	pstmt.setString(5, Up_number);
	
	int check = pstmt.executeUpdate();
	
	if(check > 0){
		%> <h1> <%=Up_number %> 수정완료했습니다.</h1>
		<input type="button" value="리스트로"
			onclick="location.href='select.jsp'">
		<% } else {
			%> <H1>수정불가!!</H1>
			<input type="button" value="리스트로"
			onclick="location.href='select.jsp'">
			<% 
		}
		
		%>
	
	   





