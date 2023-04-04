<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String gender = request.getParameter("gender");
	String path = request.getParameter("path");
	String address = request.getParameter("address");
	String memo = request.getParameter("memo");
	
	out.println("아이디 : " + id + "<br>");
	out.println("비밀번호 : " + pass + "<br>");
	out.println("성별 : " + gender + "<br>");
	out.println("가입경로 : " + path + "<br>");
	out.println("주소지 : " + address + "<br>");
	out.println("메모 : " + memo);
	
	//out.println(request.getParameter("id"));
%>
