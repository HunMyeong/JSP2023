<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	div {
	justify-content: center;
	text-align: center;
	display: flex;
	
}
	table, tr, td {
		border-collapse: collapse;
	}
	#back-btn {
	text-align: center;
	}
	</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String number = request.getParameter("number");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String select = request.getParameter("select");

String search = request.getParameter("search");

   //3. 데이터 베이스 연결
   Class.forName("org.mariadb.jdbc.Driver");

   String url = "jdbc:mariadb://localhost:3307/jspdb";
   String user = "JSPDB";
   String password = "JSP";
   
   //3. 정보 주고 드라이버매니저한테 연결하라고 시킴
   Connection con = DriverManager.getConnection(url, user, password);
   
   //4. 커넥션한테 문장통 만들라고 시킴 stmt
   Statement stmt = con.createStatement();
   
   //5. sql
   String sql ="select * from ex01";
   
   //6. rs
   ResultSet rs = stmt.executeQuery(sql);
  %>
  
  <div>

<table border="1">
   <tr>
      <td>학번</td>
      <td>이름</td>
      <td>학년</td>
      <td>선택과목</td>
   </tr>
   <%
            while (rs.next()) {
         %>
   <tr>
      <td><a href="update_form.jsp?number=<%=rs.getString("stu_num")%>"><%=rs.getString("stu_num")%></a></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("grade")%></td>
      <td><%=rs.getString("subject")%></td>
   </tr>


   
<%         }
   String link = "select stu_num from ex01 limit 1";
   ResultSet rsk = stmt.executeQuery(link);
   
   
   //8. 닫아
   con.close();
   rs.close();
   stmt.close();
 %>
 </table>
 </div>
<input id="back-btn" type="button" value="메인화면"
       style="display: block; margin: 0 auto;"
       onclick="location.href='index.jsp'">

      </body>
      </html>
