<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("utf-8");
	
	String[] lang = request.getParameterValues("lang");
	String cnl[] = request.getParameterValues("cnl");
%>
	관심언어 :
	<%
		for(int i = 0; i < lang.length; i++){
			out.println(lang[i] + "");
		}
	%>
	
	<br>
	취미 :
	<%
		for(String s : cnl){
			out.println("[" + s + "]");	
		}
	%>