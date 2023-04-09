<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String email = request.getParameter("email");
String telStr = request.getParameter("phone");
int tel = Integer.parseInt(telStr);
String nickname = request.getParameter("nickname");
%>

아이디: <%=id%> <br>
비밀번호: <%=pwd%> <br>
이메일: <%=email%> <br>
연락처: <%=tel%> <br>
닉네임: <%=nickname%>