<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//rsequest.setCharacterEncoding("utf-8");
	int kor=Integer.parseInt(request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int math=Integer.parseInt(request.getParameter("math"));
	int hap = kor + eng + math;
	
	out.println("총점은 : " + hap);
%>