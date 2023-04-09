<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("id");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게임 시작!</title>
</head>
<body>
    <h1><%=name%> 우주선 파괴</h1>
    <script src="main.js"></script>
    
</body>
    <link rel="stylesheet" href="main.css">
</html>