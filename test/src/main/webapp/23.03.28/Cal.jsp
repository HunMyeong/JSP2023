<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
        request.setCharacterEncoding("EUC-KR");
        
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        int num3 = 0;
        
        String operator = request.getParameter("operator");
        
        if(operator.equals("+")){
        	num3 = num1 + num2;
        } else if(operator.equals("-")){
        	num3 = num1 - num2;
        }
        else if(operator.equals("*")){
        	num3 = num1 * num2;
        }
        else if(operator.equals("/")){
        	num3 = num1 / num2;
        }
        
        //out.println(num3);
     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산 결과: <%=num3%></h1>
</body>
</html>    
   
    
    