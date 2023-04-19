<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String number = request.getParameter("number");
	
	Class.forName("org.mariadb.jdbc.Driver");

	String url = "jdbc:mariadb://localhost:3307/jspdb";
	String user = "JSPDB";
	String password = "JSP";
	Connection con = DriverManager.getConnection(url, user, password);
	
	
	String sql = "delete from ex01 where STU_NUM =" + number;
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	int test = pstmt.executeUpdate();
	
	if(test > 0){
		%>
		<h1> <%=number %>의 정보를 삭제했습니다.</h1>
	<%}else {%> 
	<h1><%=number %>정보 삭제 불가능!!</h1>
	<%} 
	
	%>
	
	<input type="button" value="리스트로"
			onclick="location.href='select.jsp'">
	
	
	
