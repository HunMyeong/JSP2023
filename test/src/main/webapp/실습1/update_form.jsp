<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>
   
<%
request.setCharacterEncoding("utf-8");
String number = request.getParameter("number");

//3. 데이터 베이스 연결
Class.forName("org.mariadb.jdbc.Driver");

String url = "jdbc:mariadb://localhost:3307/jspdb";
String user = "JSPDB";
String password = "JSP";
if (number != "") {
   try (Connection con = DriverManager.getConnection(url, user, password)) {

      String sql = "select * from ex01 where stu_num = (?)";
      PreparedStatement pstmt = con.prepareStatement(sql);
      pstmt.setString(1, number);

      //SQL 실행
      ResultSet rs = pstmt.executeQuery();

      String stu_num = "";
      String name = "";
      String grade = "";
      String subject = "";

      if (rs.next()) {
          stu_num = rs.getString("stu_num");
          name = rs.getString("name");
          grade = rs.getString("grade");
          subject = rs.getString("subject");
      %>
      <!DOCTYPE html>
      <html>
      <head>
      <meta charset="utf-8">
      <title>Update_Form</title>
      <style>
      body {
      font-family: Arial, sans-serif;
      font-size: 16px;
      line-height: 1.6;
      margin: 0;
      padding: 0;
    }
    
    h1, h2 {
      margin-top: 30px;
      margin-bottom: 10px;
    }
    
    table {
      border-collapse: collapse;
      width: 80%;
      margin: 30px auto;
    }
    
    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: left;
    }
    
    th {
      background-color: #f2f2f2;
    }
    
    section {
      width: 80%;
      margin: 30px auto;
    }
    
    .thum {
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      margin-bottom: 5px;
    }
    
    input[type="text"], select {
      width: 300px;
      padding: 10px;
      border-radius: 3px;
      border: 1px solid #ddd;
      font-size: 16px;
      line-height: 1.6;
      margin-bottom: 10px;
    }
    
    .radio-box {
      margin-bottom: 20px;
    }
    
    .radio-box span {
      margin-right: 10px;
    }
    
    input[type="radio"] {
      margin-right: 5px;
    }
    
    #submit-btn {
      background-color: #4CAF50;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 3px;
      font-size: 16px;
      line-height: 1.6;
      cursor: pointer;
    }
    
    #submit-btn:hover {
      background-color: #3e8e41;
    }
    
    input[type="button"] {
      background-color: #f2f2f2;
      color: #555;
      border: none;
      padding: 10px 20px;
      border-radius: 3px;
      font-size: 16px;
      line-height: 1.6;
      cursor: pointer;
      margin-right: 10px;
    }
    
    input[type="button"]:hover {
      background-color: #ddd;
    }
    
    a {
      background-color: #f44336;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 3px;
      font-size: 16px;
      line-height: 1.6;
      cursor: pointer;
      text-decoration: none;
      display: inline-block;
    }
    
    a:hover {
      background-color: #d32f2f;
    }
    
    #btn_div {
    margin-left: 16%;
    }
      
      </style>
      </head>
      
      <body>

          <table>
              <tr>
                  <th>학번</th>
                  <td><%=stu_num%></td>
              </tr>
              <tr>
                  <th>이름</th>
                  <td><%=name%></td>
              </tr>
              <tr>
                  <th>학년</th>
                  <td><%=grade%></td>
              </tr>
              <tr>
                  <th>과목</th>
                  <td><%=subject%></td>
              </tr>
          </table>
          
          <section>
          
<form action="update_ok.jsp" method="post">
   <h2>수정정보 입력폼</h2>
   <div class="thum">
      <label for="Up_number">수정할 학번 : </label>
      <input type="text" id="Up_number" name="Up_number">
   </div>
   <div class="thum">
      <label for="number">학번 : </label>
      <input type="text" id="number" name="number">
   </div>
   <div class="thum">
      <label for="name">이름 : </label>
      <input type="text" id="name" name="name">
   </div>
   <div class="radio-box">
      <span>학년 : </span>
      <input type="radio" checked name="grade" value="1학년"><span>1학년</span>
      <input type="radio" name="grade" value="2학년"><span>2학년</span>
   </div>
   <label for="select">선택과목 : </label>
   <select id="select" name="select">
      <option>JAVA</option>
      <option>C</option>
      <option>PYTHON</option>
   </select>
   <input id="submit-btn"type="submit" value="입력완료" >
</form>
</section>

<br><br>
<div id = "btn_div">
          
          <input type="button" value="리스트로"
			onclick="location.href='select.jsp'">
		
          <a href="delete_ok.jsp?number=<%= rs.getString("stu_num") %>">삭제</a>
</div>
</body>
</html>
      <%
      }
      
   } catch (Exception e) {
      e.printStackTrace();
   }
}

%>

          		

