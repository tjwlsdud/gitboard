<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";

String USERNAME = "scott";
String PASSWORD = "tiger";

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try {
  Class.forName(JDBC_DRIVER);
  conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
  String sql = "select * from member order by asc";
  rs = stmt.executeQuery(sql);
  
  while(rs.next()){
		id = rs.getString("id");
		passwd = rs.getString("passwd");
		name = rs.getString("name");
		phone = rs.getString("phone");
	}

}catch (Exception ex) {
    ex.printStackTrace();
  }
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3>오라클 JDBC 연동</h3>
  <%
  if (connect == true){
   //출력문
   %>
   //오라클 DB 연결 성공
   <%}
  else{
    %> // 오라클 DB연결 실패
   <%} %>
  %>
</body>
</html>