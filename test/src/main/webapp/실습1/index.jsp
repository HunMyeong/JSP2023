<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
	<style>
body {
  text-align: center;
  margin-top: 10%;
}

div {
  width: 200px;
  border: solid 1px;
  margin-left: auto;
  margin-right: auto;
  height: 200px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

button {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 10px;
  cursor: pointer;
  border-radius: 5px;
}

button:hover {
  background-color: #3e8e41;
}
	
	
</style>
</head>
<body>
	<div>
	<h1>회원관리</h1>
	<button type="button" onclick="location.href='insert.html' ">회원가입</button>
	<button type="button" onclick="location.href='select.jsp' ">조회하기</button>
	</div>

</body>
</html>